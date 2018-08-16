public with sharing class MyController {

public Id selectedAccount {get;set;}
public List<Contact> contactsInformation{get;set;}

    public List<Account> getMyAccounts() {
return [SELECT Id, Name, Accountnumber from Account ORDER BY
LastModifiedDate DESC LIMIT 1];
}

public void accountClicked(){
contactsInformation = [SELECT FirstName, LastName From Contact
WHERE AccountID=:selectedAccount];
}
}