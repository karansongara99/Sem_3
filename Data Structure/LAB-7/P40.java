import java.util.*;

class P40
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("String containing a's and b's = ");
        String n = sc.next();
        char[] arr =  n.toCharArray();

        Stack a = new Stack(n.length());
        Stack b = new Stack(n.length());

        for(char ch : arr)
        {
            if(ch == 'a')
            {
                a.PUSH(ch);
            }
        }
        for(char ch : arr)
        {
            if(ch == 'b')
            {
                b.PUSH(ch);
            }
        }
        System.out.println(a.TOPVALUES());
        System.out.println(b.TOPVALUES());
        if(a.TOPVALUES()==b.TOPVALUES())
            System.out.println("String Contains same numbers of a's and b's");
        else
            System.out.println("String Contains different numbers of a's and b's");
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
    int TOPVALUES()
    {
        return top;
    }
}