
public class Transfer {
    public static void main(String[] args) {
        Animal A[] = new Animal[4];
        A[0] = new Tiger();
        A[1] = new Camel();
        A[2] = new Deer();
        A[3] = new Donkey();

        for (int i = 0; i < 4; i++)

        {
            A[i].display();
        }
    }
}

/* Transport Interface */

interface Transport {
    public void deliver();
}

/* Abstracr Class Animal */

abstract class Animal {

    abstract void display();
}

/* Super Class */

class Tiger extends Animal {
    public void display() {
        System.out.println("Tiger Class");
    }

}

class Camel extends Animal implements Transport {

    public void deliver() {
        System.out.println("This Interface Transport Thrugh Class Is Camel");
        display();
    }


    public void display() {
        System.out.println("Camel Class");
    }
}

class Deer extends Animal {
    public void display() {
        System.out.println("Deer Class");
    }
}

class Donkey extends Animal implements Transport {
    public void deliver() {
        System.out.println("This Interface Transport Thrugh Class Is Donkey");
        display();
    }

    public void display() {
        System.out.println("Donkey Class");
    }

}