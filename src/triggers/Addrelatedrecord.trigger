trigger Addrelatedrecord on Account (before insert,after update) {
list<Opportunity> oppr = new list<Opportunity>();
    For ( Account a : [Select id, name from Account where Id IN:Trigger.new and Id not in ( select AccountId from opportunity)])
    {
        oppr.add(new Opportunity(Name='testtriggernew', stagename='Prospecting', Closedate= system.today().addmonths(1), Accountid=a.Id));
        
    }
    if (oppr.size() > 0)
    {
        insert oppr;
    }
}