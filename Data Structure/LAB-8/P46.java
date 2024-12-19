import java.util.*;

class P46
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Infix String = ");
        String n = sc.next();

        Stack s = new Stack(n.length());

        s.REVPOL(n);
    }
}
class Stack{
    
    private char[] s;
    private int top;

    public Stack (int n){
        s = new char[n];
        top = -1;
    }

    void PUSH(char n)
    {
        if(top == s.length-1)
        {
            System.out.println("Stack is Overflow");
            return;
        }
        top++;
        s[top] = n;
    }

    char POP()
    {
        if(top < 0)
        {
            System.out.println("Stack is underflow");
            return ' ';
        }
        top--;
        return s[top+1];
    }
    int stackPrecedence(char n)
    {
        if(n=='+'||n=='-')
            return 2;
        else if(n=='*'||n=='/')
            return 4;
        else if(n=='^')
            return 5;
        else if((n >= 'a' && n <= 'z') || (n >= 'A' && n <= 'Z'))
            return 8;
        else if(n=='(')
            return 0;
        return 0;
    }
    int inputPrecedence(char n)
    {
        if(n=='+'||n=='-')
            return 1;
        else if(n=='*'||n=='/')
            return 2;
        else if(n=='^')
            return 6;
        else if((n >= 'a' && n <= 'z') || (n >= 'A' && n <= 'Z'))
            return 7;
        else if(n=='(')
            return 9;
        else if(n==')')
            return 0;
        return 0;
    }
    int rank(char n)
    {
        if((n >= 'a' && n <= 'z') || (n >= 'A' && n <= 'Z'))
            return 1;
        else if(n=='(' || n==')')
            return 0;
        else 
            return -1;
    }
    String reverse(String n)
    {
        String m = "";
        for(int  i=n.length()-1 ; i >= 0 ; i--)
        {
            if(n.charAt(i)=='(')
                m += n.charAt(i)==')';
            else if(n.charAt(i)==')')
                m += n.charAt(i)=='(';
            else
                m += n.charAt(i);
        }
        return m;
    }
    void REVPOL(String infix)
    {
        String tempInfix = reverse(infix) + ')';
        top++;
        s[top] = '(';

        String polish = "";
        int totalRank = 0;

        for(int i=0 ; i<tempInfix.length() ; i++)
        {
            char next = tempInfix.charAt(i);
            if(top<0)
            {
                System.out.println("Invalid infix expression");
                break;
            }
            else
            {
                while(stackPrecedence(s[top]) > inputPrecedence(next))
                {
                    char temp = POP();
                    polish = polish + temp;
                    totalRank = totalRank + rank(temp);
                    if(totalRank < 1)
                    {
                        System.out.println("Invalid infix expression");
                        break;
                    }
                }
                if(stackPrecedence(s[top]) != inputPrecedence(next) )
                {
                    PUSH(next);
                }
                else
                {
                    POP();
                }
            }
        }

        if(top != -1 || totalRank != 1)
        {
            System.out.println("Invalid infix expression");
        }
        else
        {
            System.out.println("Infix expression : "+infix);
            System.out.println("Postfix expression : "+reverse(polish));
        }
    }
    
    void printStack()
    {
        System.out.print("Values Stack:");
        for(int i = 0 ; i <= top ; i++)
        {
            System.out.print(s[i]+" | ");
        }
        System.out.println("");
    }
}