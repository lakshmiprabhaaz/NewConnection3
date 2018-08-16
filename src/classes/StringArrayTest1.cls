public class StringArrayTest1 {
    
public static list<String> generateStringArray( integer n)
{
    list<string> testarray = new list<string> ();
    for (integer i=0; i<=n ;i+2)
    {
        testarray.add('TEST' + i);
        system.debug(testarray[i]);
    }
    
    return testarray;
}

}