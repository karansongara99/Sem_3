import java.util.Scanner;

class CircularQueue {
    private int[] queue;
    private int front;
    private int rear;
    private int size;

    CircularQueue(int size) {
        this.size = size;
        queue = new int[size];
        front = -1;
        rear = -1;
    }

    boolean isEmpty() {
        return front == -1 && rear == -1;
    }

    boolean isFull() {
        return (rear + 1) % size == front;
    }

    void insert(int item) {
        if (isFull()) {
            System.out.println("Queue is full!");
        } else if (isEmpty()) {
            front = rear = 0;
            queue[rear] = item;
        } else {
            rear = (rear + 1) % size;
            queue[rear] = item;
        }
    }

    int delete() {
        if (isEmpty()) {
            System.out.println("Queue is empty!");
            return -1;
        } else if (front == rear) {
            int temp = queue[front];
            front = rear = -1;
            return temp;
        } else {
            int temp = queue[front];
            front = (front + 1) % size;
            return temp;
        }
    }

    void display() {
        if (isEmpty()) {
            System.out.println("Queue is empty!");
        } else {
            System.out.print("Queue: ");
            int i = front;
            while (i != rear) {
                System.out.print(queue[i] + " ");
                i = (i + 1) % size;
            }
            System.out.println(queue[rear]);
        }
    }
}

public class p51 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the size of the queue: ");
        int size = sc.nextInt();
        CircularQueue queue = new CircularQueue(size);

        while (true) {
            System.out.println("\nCircular Queue Operations:");
            System.out.println("1. Insert");
            System.out.println("2. Delete");
            System.out.println("3. Display");
            System.out.println("4. Exit");

            System.out.print("Enter your choice:");
            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter the item to insert: ");
                    int item = sc.nextInt();
                    queue.insert(item);
                    break;
                case 2:
                    int deletedItem = queue.delete();
                    if (deletedItem != -1) {
                        System.out.println("Deleted item: " + deletedItem);
                    }
                    break;
                case 3:
                    queue.display();
                    break;
                case 4:
                    System.out.println("Exiting...");
                    return;
                default:
                    System.out.println("Invalid choice! Please try again.");
            }
        }
    }
}