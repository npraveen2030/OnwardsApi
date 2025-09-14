using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class LanguageService : ILanguageService
    {
        private readonly ILanguageRepository _languageRepository;

        public LanguageService(ILanguageRepository languageRepository)
        {
            _languageRepository = languageRepository;
        }

        public void Insert(LanguageModel language)
        {
            _languageRepository.Insert(language);
        }

        public void Update(LanguageModel language)
        {
            _languageRepository.Update(language);
        }

        public void Delete(int id)
        {
            _languageRepository.Delete(id);
        }

        public LanguageModel GetLanguageById(int id)
        {
            return _languageRepository.GetLanguageById(id);
        }

        public List<LanguageModel> GetLanguages()
        {
            return _languageRepository.GetLanguages();
        }
    }

}
