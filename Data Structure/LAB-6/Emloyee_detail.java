
import java.util.Scanner;

public class Emloyee_detail {
    
    int employee_id;
    String name;
    String desgination;
    Double salary;

     Emloyee_detail(int employee_id,String name,String desgination,Double salary) {
        this.employee_id = employee_id;
        this.name = name;
        this.desgination = desgination;
        this.salary = salary;
    }

    void display()
    {
        System.out.println("ID:"+employee_id);
        System.out.println("Name:"+name);
        System.out.println("Desgnation:"+desgination);
        System.out.println("Salary:"+salary);
    }
     
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int employee_id = sc.nextInt();
        String name = sc.next();
        String desgination = sc.next();
        Double salary = sc.nextDouble();

        Emloyee_detail obj = new Emloyee_detail(employee_id, name, desgination, salary);
        obj.display();
    }
}
