import java.util.*;

class P47
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Post String = ");
        String n = sc.next();

        Stack s = new Stack(n.length());

        s.evaluationOfPostfix(n);
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
        Scanner sc = new Scanner(System.in);
        if(top < 0)
        {
            System.out.println("Stack is underflow");
            return ' ';
        }
        top--;
        return s[top+1];
    }
    
    void evaluationOfPostfix(String postfix)
    {
        for(int i=0 ; i<postfix.length() ; i++)
        {
            char ch = postfix.charAt(i);
            if(ch=='+'||ch=='-'||ch=='*'||ch=='/'||ch=='^')
            {
                int oprand2 = POP() - '0';
                int oprand1 = POP() - '0';
                switch(ch)
                {
                    case '+':
                        PUSH((char)(((oprand1+oprand2)+'0')));
                        break;
                    case '-':
                        PUSH((char)((oprand1-oprand2)+'0'));
                        break;
                    case '*':
                        PUSH((char)((oprand1*oprand2)+'0'));
                        break;
                    case '/':
                        PUSH((char)((oprand1/oprand2)+'0'));
                        break;
                    case '^':
                        while(oprand2>0)
                        {
                            oprand1 *= oprand1;
                            oprand2--;
                        }
                        PUSH((char)(oprand1+'0'));
                        break;
                }
            }
            else
            {
                PUSH(postfix.charAt(i));
            }
        }
        int ans = POP() - '0';
        System.out.println("Evaluation of Postfix = "+ans);
    }
}