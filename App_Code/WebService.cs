using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string[] GetArea(string area, string city)
    {

        AreaData adata = new AreaData();
        DataSet ds = adata.getAreas("select * from area where city='" + city + "' and areapincode LIKE '%" + area + "%'");
        string[] arr = new string[ds.Tables[0].Rows.Count];
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                arr[i] = ds.Tables[0].Rows[i]["areapincode"].ToString();
            }

        }

        //  jstring = JsonConvert.SerializeObject(ds, Formatting.Indented);


        return arr;
    }

    
}
