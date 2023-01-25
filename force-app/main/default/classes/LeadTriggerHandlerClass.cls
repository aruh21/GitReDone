public with sharing class LeadTriggerHandlerClass {

    public Static Boolean flag = True ;

    public void leadRecordCloneMethod(List<Lead> leList) {
      //Write a Trigger on Lead which will create the clone record.
      //(Hint : Map trigger.new to clone record)
        if(flag == true){  
        flag = false ;
        List<Lead> leaList = new List<Lead>();
        for(lead l : leList ){
            lead lea = new lead();
        
            lea.FirstName = l.FirstName;
            lea.LastName = l.LastName;
            lea.LeadSource = l.LeadSource;
            lea.Phone = l.Phone;
            lea.company = l.company;
            lea.Status = l.Name;
            lea.LeadSource = l.LeadSource;
            lea.City = l.City;
            lea.State = l.State;
            lea.Country = l.Country;
            lea.Street = l.Street;
            lea.AnnualRevenue = l.AnnualRevenue;
            lea.Status = l.Status;
            leaList.add(lea);
        }
        insert leaList;
    }

   
}


}