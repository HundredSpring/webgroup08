package Util;

import java.text.DecimalFormat;

public class MyUtil {
    public static boolean isInteger(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }
    public static String format(Double value){
        DecimalFormat currency = new DecimalFormat("###,###,###");
        if (value == null){
            value = 0.0;
        }
        return   currency.format(value) + " VND";
    }
}