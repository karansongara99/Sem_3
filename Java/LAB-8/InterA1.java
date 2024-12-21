interface A {
    int conA = 10;

    void methodA();
}

interface A1 extends A {
    int conA1 = 20;

    void methodA1();
}

interface A2 extends A {
    int conA2 = 30;

    void methodA2();
}

interface A12 extends A1, A2 {
    void methodA12();
}

class BChild implements A12 {
    public void methodA() {
        System.out.println("Const A: " + A.conA);
    }

    public void methodA1() {
        System.out.println("Const A1: " + A1.conA1);
    }

    public void methodA2() {
        System.out.println("Const A2: " + A2.conA2);
    }

    public void methodA12() {
        System.out.println("Const A12: " + (A1.conA1 + A2.conA2));
    }
}

public class InterA1 {
    public static void main(String[] args) {
        BChild b = new BChild();
        b.methodA();
        b.methodA1();
        b.methodA2();
        b.methodA12();
    }
}