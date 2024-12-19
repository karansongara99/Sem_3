class Node {
    int data;
    Node next;

    Node(int data) {
        this.data = data;
        this.next = null;
    }
}

class Queue {
    Node front;
    Node rear;

    Queue() {
        front = null;   
        rear = null;
    }

    void enqueue(int data) {
        Node newNode = new Node(data);

        if (rear == null) {
            front = newNode;
            rear = newNode;
        } else {
            rear.next = newNode;
            rear = newNode;
        }
    }

    void dequeue() {
        if (front == null) {
            System.out.println("Queue is empty");
            return;
        }

        Node temp = front;
        front = front.next;

        if (front == null) {
            rear = null;
        }

        System.out.println("Dequeued element: " + temp.data);
    }

    void display() {
        if (front == null) {
            System.out.println("Queue is empty");
            return;
        }

        Node current = front;
        while (current != null) {
            System.out.print(current.data + " ");
            current = current.next;
        }
        System.out.println();
    }
}

public class p61 {
    public static void main(String[] args) {
        Queue queue = new Queue();

        queue.enqueue(10);
        queue.enqueue(20);
        queue.enqueue(30);

        queue.display();

        queue.dequeue();
        queue.dequeue();

        queue.display();
    }
}