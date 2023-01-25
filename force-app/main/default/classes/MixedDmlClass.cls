public class MixedDmlClass {
    public Static Void insertFamilyHead(){
        List<Contact> conList = new List<Contact>();
        Contact con = new Contact();
        con.FirstName = 'Shri';
        con.LastName = 'Mahamuni';
        con.is_family_head__c = True;
        con.Email = 'shriMahamuni@deciphercloud.com';
        con.MailingCity = 'Shipur';
        con.MailingPostalCode = '423009';
        con.MailingState = 'Kerala';
        con.MailingCountry = 'India';
        con.Birthdate = Date.newInstance(1987, 07, 28);
        conList.add(con);
        insert conList;
        MixedDmlClass.insertUser('Shri','Mahamuni','shriMahamuni@deciphercloud.com');
    }
    
    @future
    public Static void insertUser(String na, String ln, String em){
        // List<Contact> conn = [Select id From Contact Where Id =:recordId];
        
        Profile profId = [select Id from Profile where name=:'Work.com Only User' limit 1];
        User u = new user();
        u.FirstName = na;
        u.LastName = ln;
        u.Email = em;
        u.Alias = '@test';
        u.Username = 'DecishriM@test.com';
        u.CommunityNickname = 'UserrInsert';
        u.LocaleSidKey = 'en_US';
        u.TimeZoneSidKey = 'GMT';
        u.ProfileID = '00e5h000004SUs6AAG';
        u.LanguageLocaleKey = 'en_US';
        u.EmailEncodingKey = 'UTF-8';
        insert u;
        
    }
    
    
}