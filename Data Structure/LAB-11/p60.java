class Node {
    int data;
    Node next;

    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}

class Stack {
    private Node top;

    public Stack() {
        this.top = null;
    }

    public void push(int data) {
        Node newNode = new Node(data);
        newNode.next = top;
        top = newNode;
        System.out.println(data + " pushed to stack.");
    }

    public int pop() {
        if (isEmpty()) {
            System.out.println("Stack is empty. Cannot pop.");
            return -1;
        }
        int poppedData = top.data;
        top = top.next;
        System.out.println(poppedData + " popped from stack.");
        return poppedData;
    }

    public int peek() {
        if (isEmpty()) {
            System.out.println("Stack is empty. Cannot peek.");
            return -1;
        }
        return top.data;
    }

    public boolean isEmpty() {
        return top == null;
    }
}

public class p60 {
    public static void main(String[] args) {
        Stack stack = new Stack();

        // Test push operation
        stack.push(10);
        stack.push(20);
        stack.push(30);

        // Test peek operation
        System.out.println("Top element is: " + stack.peek());

        // Test pop operation
        stack.pop();
        System.out.println("Top element after pop: " + stack.peek());

        // Test popping all elements
        stack.pop();
        stack.pop();
        stack.pop(); // Attempting to pop from an empty stack

    }
}