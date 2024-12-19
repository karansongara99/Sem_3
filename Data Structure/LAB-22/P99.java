//Shell Sort

import java.util.*;

public class P99 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Size of Array:");
        int n = sc.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter Number::");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        for (int gap = n / 2; gap >= 1; gap = gap / 2) 
        {
            for (int j = gap; j < n; j++) 
            {
                for (int i = j - gap; i >= 0; i = i - gap) 
                {
                    if (arr[i + gap] > arr[i]) 
                    {
                        break;
                    }
                    else{
                        int temp = arr[i];
                        arr[i] = arr[i+1];
                        arr[i+1] = temp;
                    }   
                }
            }
        }
        System.out.println("Final Array Answer::::::::::");
        for(int i=0;i<n;i++)
        {
            System.out.print(arr[i]+" | ");
        }
    }
}