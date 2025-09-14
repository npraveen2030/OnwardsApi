using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Model;

namespace OnwardsDAL.Interface
{
    public interface ILanguageRepository
    {
        void Insert(LanguageModel language);
        void Update(LanguageModel language);
        void Delete(int id);
        LanguageModel GetLanguageById(int id);
        List<LanguageModel> GetLanguages();
    }

}
