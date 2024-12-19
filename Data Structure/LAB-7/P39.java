import java.util.*;

class P39
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String = ");
        String n = sc.next();
        char[] arr = n.toCharArray();   
        int cIndex = 0;
        boolean flag = true;

        Stack s = new Stack(n.length());

        for(int i=0 ; i<n.length() ; i++)
        {
            if(arr[i] == 'c')
            {
                cIndex=i+1;
                break;
            }
            else
                s.PUSH(arr[i]);
        }
        for(int i = cIndex ; i < n.length() ; i++)
        {
            if(arr[i]!=s.POP())
            {
               flag = false;
            }
            else{
                flag = true;
            }
        }
        if(flag)
        {
            System.out.println("Valid");
        }
        else{
            System.out.println("Invalid");
        }
    }
}
class Stack{
    
    private char[] s;
    private int top;

    public Stack (int n){
        s = new char[n];
        top = -1;
    }

    void PUSH(char ch)
    {
        if(top == s.length-1)
        {
            System.out.println("Stack is Overflow");
        }
        top++;
        s[top] = ch;
    }
    char POP()
    {
        Scanner sc = new Scanner(System.in);
        if(top < 0)
        {
            System.out.println("Stack is underflow");
        }

        top--;
        return s[top+1];
    }
}