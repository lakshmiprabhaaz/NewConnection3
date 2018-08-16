public class TemperatureConverter {

    public static decimal farenhittoCel (decimal fh){
        decimal cs =(fh-32)*5/9;
        return cs.setScale(2);
            }
}