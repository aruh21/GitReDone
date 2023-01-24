public class SendEmailToFamilyHead {
    //when ever new family member get added send email to family head
      
    public static void insertContact(List<contact> conlist){
       //List<Contact> con1 = new List<Contact> (select Id, Name , Family_Head_Name__r.Name, Family_Head_Name__r.Email,  Family_Head_Name__c from Contact);
                List<Id> familyHeadId = new List<Id>();
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
        for(Contact con : conlist){
              familyHeadId.add(con.family_heads__c);                              
            }
        List<String> emailAddresses = new List<String>();
        for(Contact c : [select Id, Name, Email from Contact where Id IN :familyHeadId]){
        emailAddresses.add(c.Email);
        }
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.SetToAddresses(emailAddresses);
        for(Contact con2 : conlist){
            email.subject = 'Re: New Voter added';
            email.plaintextbody = 'The voter has been added' ;
            emails.add(email);
            
        }
      Messaging.sendEmail(emails);  
    }
}
    
  /*  //Flow of Contact written in trigger
    public Static void contactFlow(List<Contact> con ){
        
        List<Account> accList = new List<Account>();
        For(Contact c : con){
            //if is family head checkbox is checked then populate family name and create new family on account        
            if(c.is_family_head__c == true){
                c.AccountId = c.family_heads__r.Name;
                Account a = new Account();
                a.Name= c.LastName;
                a.BillingCity = c.MailingCity;
                a.BillingState = c.MailingState;
                a.BillingCountry = c.MailingCountry;
                accList.add(a);
            } 
            //if is family head checkbox is not checked then populate family name
            
        } insert accList;
    }
    
    public Static void contactCheckboxNotChecked(List<Contact> con){
        List<Account> acList = [Select Id, Name from Account ];
        for(Contact c : con){
                
            
            if(c.is_family_head__c == false ){ 
               
            c.AccountId = c.family_heads__r.Name;
            }
    
        }
} */