using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using OnwardsDAL.Interface;

namespace OnwardsBLL.Service
{
    public class DailyTaskService : BackgroundService
    {
        private readonly ILogger<DailyTaskService> _logger;
        private readonly IServiceProvider _serviceProvider; 
        private readonly TimeSpan _scheduledTime = new TimeSpan(6, 0, 0); // 6:00 AM

        public DailyTaskService(ILogger<DailyTaskService> logger, IServiceProvider serviceProvider)
        {
            _logger = logger;
            _serviceProvider = serviceProvider;
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            _logger.LogInformation("DailyTaskService is starting.");

            while (!stoppingToken.IsCancellationRequested)
            {
                try
                {
                    var now = DateTime.Now;
                    var nextRun = DateTime.Today.Add(_scheduledTime);

                    if (now > nextRun)
                        nextRun = nextRun.AddDays(1);

                    var delay = nextRun - now;
                    _logger.LogInformation($"Next run scheduled at: {nextRun}");

                    await Task.Delay(delay, stoppingToken);

                    await RunDailyCommandAsync();

                    await Task.Delay(TimeSpan.FromDays(1), stoppingToken);
                }
                catch (TaskCanceledException)
                {
                    // normal during shutdown
                }
                catch (Exception ex)
                {
                    _logger.LogError(ex, "Error occurred in DailyTaskService.");
                }
            }

            _logger.LogInformation("DailyTaskService is stopping.");
        }

        private async Task RunDailyCommandAsync()
        {
            _logger.LogInformation($"Running daily task at: {DateTime.Now}");

            using (var scope = _serviceProvider.CreateScope())
            {
                var repository = scope.ServiceProvider.GetRequiredService<IDailyTaskRepository>();

                await repository.RunAbsentCheckAsync(0);
            }

            _logger.LogInformation("Daily task completed.");
        }
    }
}
