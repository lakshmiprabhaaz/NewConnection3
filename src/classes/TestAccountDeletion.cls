@isTest
private class TestAccountDeletion {
    
    @isTest static void TestDeleteAccountWithOneOpportunity(){
        Account acc= new Account (name='test account');
        insert acc;
        Opportunity opp = new opportunity ( Name ='testoppr', stagename='Prospecting', closedate=system.today()+2, Accountid=acc.id);
        insert opp;
        
        Test.startTest();
        Database.DeleteResult result= Database.delete(acc, false);
        test.stopTest();
        
        system.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());
            
    }

}