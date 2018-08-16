public class EmailManager {
    public static void sendMail(String address, String subject , String body)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String [] toAddress = new String [] {address};
        mail.settoaddresses (toaddress);
        mail.setsubject (subject);
        mail.setplaintextbody(body);
       // messaging.sendemailresult[] results =messaging.sendEmailresult (new messaging.SingleEmailMessage []{mail});
        //inspectresults(results);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });
         inspectresults(results);
    }
    
    Private static boolean inspectresults (messaging.SendEmailResult[] results)
    {
        boolean sendresult =true;
        for (messaging.sendEmailResult res : results) {
            if (res.issuccess())
            { System.debug('Email sent');
            } 
            else 
               {	sendresult= false;
                   System.debug(' errors occured :' + res.geterrors()); 
                
        }
    // return sendresult;  
    }
        return sendresult; 
}
}