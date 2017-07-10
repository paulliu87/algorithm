
import java.io.*;
import java.util.*;

//this one returns the solutions instead of number of the solutions
class solution
{
    public static ArrayList<int[]> subArray2(int[] nums, int k) {
        ArrayList<int[]> result = new ArrayList<int[]>();
        for (int i = 0; i < nums.length; i++) {
            int crtSum = nums[i];
            for (int j = i + 1; j < nums.length; j++) {
                if (crtSum % k == 0) {
                    int[] temp = {i, j - 1};
                    result.add(temp);
                }
                
                crtSum += nums[j];
            }
        }
        return result;
    }
    
    
    public static void main(String[] args) 
    {
        int arr[] = {15, 2, 4, 8, 9, 5, 10, 23};
        int n = arr.length;
        int k = 3;
        ArrayList<int[]> result = subArray2(arr, k);
        for (int i = 0; i < result.size(); i++) {
            int[] temp = result.get(i);
            System.out.println(temp[0] + " to " + temp[1]);
        }
    }
}
    
