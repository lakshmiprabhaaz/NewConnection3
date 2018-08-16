public class New_Controller {
public Account account { get; private set; }
public boolean popup {get; set;}



public New_Controller() {
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id == null) ? new Account() : 
            [SELECT Name, Phone, Industry,website,site FROM Account WHERE Id = :id];
    }
    
public void submit(){
    popup = true;    
    }
    
    public void close(){
    popup=false;
    }

public PageReference save() {
        try {
            upsert(account);
            popup = false;
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        
        return (new ApexPages.StandardController(account)).view();
    }

}