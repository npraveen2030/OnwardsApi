using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Model;

namespace OnwardsBLL.Interface
{
    public interface ILanguageService
    {
        void Insert(LanguageModel language);
        void Update(LanguageModel language);
        void Delete(int id);
        LanguageModel GetLanguageById(int id);
        List<LanguageModel> GetLanguages();
    }

}
