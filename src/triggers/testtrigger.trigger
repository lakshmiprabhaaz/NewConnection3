trigger testtrigger on Account (before insert,after delete) {
System.debug('hi');
    List<Opportunity> opplist =new List<Opportunity>();
    Map<Id,Account> acctwithoppr =New Map<Id,Account> ([select id,(select Id from Opportunities) from Account where Id IN :Trigger.New]);
   /* For (Account a: Trigger.New){
        system.debug(+acctwithoppr.get(a.Id).Opportunities.size());
    }*/
                
    }