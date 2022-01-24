public class ProcessLeadEx {

    @invocablemethod
    public static void testprocess(List<ID> ids) {
  
        List<Lead> leads = [select name from Lead where id in :ids ];

       for(lead le:leads) {
            le.firstname = 'sfdctest';
           le.title = 'from apex code';
	} 
      upsert leads;
    }


}