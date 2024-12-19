import java.util.*;

class p50 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Size of Queue = ");
        int n = sc.nextInt();

        Queue q = new Queue(n);

        boolean temp = true;

        while (temp) {
            System.out.println("Press 1 for ENQUEUE");
            System.out.println("Press 2 for DEQUEUE");
            System.out.println("Press 3 for DISPLAY");
            System.out.println("Press 4 for EXIT");
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    q.enQueue();
                    break;
                case 2:
                    q.deQueue();
                    break;
                case 3:
                    q.DISPLAY();
                    break;
                case 4:
                    temp = false;
                    break;
                default:
                    System.out.println("Invalid Input");
                    break;
            }
        }
    }
}

class Queue {

    private int[] q;
    
    int front, rear;

    public Queue(int n) {
        front = -1;
        rear = -1;
        q = new int[5];

    }

    void enQueue() {
        Scanner sc = new Scanner(System.in);
        System.out.print("New Values : ");
        int y = sc.nextInt();
        if (rear >= 5 - 1) {
            System.out.println("Queue is Overflow");

        } else {
            rear++;
            q[rear] = y;
            if (front == -1) {
                front = 0;
            }
        }
    }

    int deQueue() {
        if (front == -1 && rear == -1) {
            System.out.println("Queue is empty!");
            return -1;
        } else if (front == rear) {
            int temp = q[front];
            front = rear = -1;
            return temp;
        } else {
            int temp = q[front];
            front++;
            return temp;
        }
    }

    void DISPLAY() {
        if (front == -1) {
            System.out.println("UnderFlow Queue");
        } else {
            for (int i = front; i <= rear; i++) {
                System.out.println("Display : " +  q[i]);
            }
        }
    }
}