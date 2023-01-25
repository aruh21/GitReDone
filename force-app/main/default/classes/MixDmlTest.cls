@isTest
public class MixDmlTest {
    @isTest
    public static void MyDMLAccount(){
      //  List<Contact> conList = [Select FirstName, LastName, is_family_head__c, Email From Contact where FirstName='Aruna' ];
        MixedDmlClass.insertFamilyHead();
       
    }
    
@isTest
    public static void MyDMLUser(){
        String FirstName='Nikita';
        String LastName='Nathani';
        String email='naina21c@gmail.com';
        MixedDmlClass.insertUser(FirstName,LastName,email);  
        //didn't use assert statement as in method it only inserts and we can't check 
    }
}