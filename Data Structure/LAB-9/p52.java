import java.util.*;

class Queue {
    int rear = -1, front = -1;
    int s;
    int[] q;
    Scanner sc = new Scanner(System.in);

    Queue() {
        System.out.println("Enter Queue Size");
        s = sc.nextInt();
        q = new int[s];
    }

    void Enqueue() {
        if (rear == (s - 1)) {
            System.out.println("Over Flow Queue");
        } else {
            System.out.println("Enter the data");
            int data = sc.nextInt();
            if (front == -1 && rear == -1) {
                front = 0;
                rear = 0;
                q[rear] = data;
            } else {
                rear = rear + 1;
                q[rear] = data;
            }
        }

    }

    void Dequeue() {

        if (front == -1 && rear == -1) {
            System.out.println("Queue is Under flow");
        } else {
            if (front == rear) {
                front = -1;
                rear = -1;
            }
        }
        System.out.println("Dequeue value is : " + q[front]);
        front = front + 1;

    }

    void Display() {
        System.out.println("items in Queue is : ");
        for (int i = front; i <= rear; i++) {
            System.out.println(q[i]);
        }
    }

    void Deinsert_f() {
        if (front == 0) {
            System.out.println("Overe FLow");
        } else {
            System.out.println("Enter the data");
            int data = sc.nextInt();
            if (front == -1) {
                front = 0;
                rear = 0;
                q[front] = data;

            } else {
                front = front - 1;
                q[front] = data;

            }
        }
    }

    void DeDelete_r() {
        if (rear == -1) {
            System.out.println("Under FLow");
        }
        System.out.println("Delet value of r=" + q[rear]);
        if (rear == front) {
            rear = -1;
            front = -1;
        } else {
            rear = rear - 1;
        }

    }
}

public class p52 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Queue q = new Queue();

        boolean temp = true;
        while (temp) {
            System.out.println("Press 1 for ENQUEUE");
            System.out.println("Press 2 for DEQUEUE");
            System.out.println("Press 4 for insert at front Doubled");
            System.out.println("Press 5 for Delete at rear Doubled");
            System.out.println("Press 3 for DISPLAY");
            System.out.println("Press 4 for EXIT");
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    q.Enqueue();
                    break;
                case 2:
                    q.Dequeue();
                    break;
                case 3:
                    q.Display();
                    break;
                case 4:
                    q.Deinsert_f();
                    break;
                case 5:
                    q.DeDelete_r();
                    break;
                case 6:
                    temp = false;
                    break;
                default:
                    System.out.println("Invalid Input");
                    break;
            }
        }
    }
}