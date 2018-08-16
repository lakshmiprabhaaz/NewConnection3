@isTest

private class TemperatureConverterTest {
    
    @isTest static void testwarm() {
        Decimal cs1= TemperatureConverter.farenhittoCel(70);
        system.assertEquals(21.11, cs1);      
    }

    @isTest static void freeze() {
        Decimal cs2= TemperatureConverter.farenhittoCel(32);
        system.assertEquals(0, cs2);  
    }
    
    @isTest static void boiling() {
        Decimal cs3= TemperatureConverter.farenhittoCel(212);
        system.assertEquals(100, cs3);  
    }
}