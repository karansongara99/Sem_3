public class FinalKey {
    public static void main(String[] args) {
        Car c = new Car();
        c.display();
       
    }
}

class Vehicle{
    final int a = 5;
    final void display(){
        a = a + 1;
        System.out.println("Print of A:"+a);
    }
}

class Car extends Vehicle{
    void display(){
        System.out.println("Heloo!!!!!!!!!");
        super.display();
    }
}


