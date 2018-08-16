trigger AccountDeletion on Account (before delete) {

    For ( Account a: [Select id from Account where id in (Select Accountid from opportunity) and Id IN: trigger.old])
    {
trigger.oldmap.get(a.id).adderror('cannot delete');
                                  }
        }