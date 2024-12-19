import java.util.*;

class P41
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("String = ");
        String n = sc.next();
        char[] arr =  n.toCharArray();
        boolean valid = true;

        Stack s = new Stack(n.length());

        for(char ch : arr)
        {
            System.out.println(ch);
            if(ch == '(' || ch == '{' || ch == '[')
            {
                s.PUSH(ch);
            }
            else if(ch == ')' && s.TOPVALUE() == '(')
            {
                s.POP();
            }
            else if(ch == '}' && s.TOPVALUE() == '{')
            {
                s.POP();
            }
            else if(ch == ']' && s.TOPVALUE() == '[')
            {
                s.POP();
            }
            else
            {
                valid = false;
                System.out.println("0");
                break;
            }
        }
        if(valid)
            System.out.println("1");
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
    char TOPVALUE()
    {
        return s[top];
    }
}