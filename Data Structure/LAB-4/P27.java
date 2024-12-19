import java.util.*;

class P27 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String : ");
        String n = sc.next();
        String ans = "";

        for(int i=0;i<n.length();i++)
        {
            if(n.charAt(i)>=97 && n.charAt(i)<=122)
            {
                ans += (char) (n.charAt(i) - 32);
            }
        }
        System.out.println(ans);
    }    
}
