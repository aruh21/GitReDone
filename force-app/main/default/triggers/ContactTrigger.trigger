trigger ContactTrigger on Contact (before insert, after insert) {

  /*  if(Trigger.isInsert && Trigger.isAfter){
     SendEmailToFamilyHead.insertContact(trigger.new);
    } */
   
   if(Trigger.isBefore  && Trigger.isInsert){
        VoterTriggerHandlerFlow.checkBoxChecked(Trigger.new);
    }
     if( Trigger.isBefore && Trigger.isInsert){
        VoterTriggerHandlerFlow.checkBoxNotChecked(Trigger.new);
    } 
   
}