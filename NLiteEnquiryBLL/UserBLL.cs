using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace NLiteEnquiryBLL
{
    public class UserBLL
    {

        public DataSet GetUseDetails(String userName, string password)
        {
            NliteEnquiryDAL.NLiteEnquiryDataManager EnquiryDM = new NliteEnquiryDAL.NLiteEnquiryDataManager();
            return EnquiryDM.GetUseDetails(userName, password);
        }
    }
}
