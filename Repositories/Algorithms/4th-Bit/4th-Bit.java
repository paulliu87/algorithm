
import java.io.*;
import java.util.*;


class solution
{

    public static int findFourthLSD(int num) {
        if (num < 8 && num >= 0) {
            return 0;
        }
        
        String stringFormat = Integer.toBinaryString(num);
        Character digit = stringFormat.charAt(stringFormat.length() - 4);
        return Character.getNumericValue(digit);
    }
    
    public static void main(String[] args) {
        int test = 7;
        int result = findFourthLSD(test);
        
        
        String test1 = Integer.toBinaryString(test);
        
        
        
        System.out.println(test1);
        System.out.println(result);
    }
}
    
