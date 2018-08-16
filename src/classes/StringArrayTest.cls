public class StringArrayTest {

    public static list<String> generateStringArray( integer n)
    {
       List <String> testarray = new list <String>();
       For (Integer i=0 ; i <= n ;i++)
       {
           testarray.add('Test'+ i);
           system.debug(testarray[i]);
       }
        return testarray;
    }
    
}