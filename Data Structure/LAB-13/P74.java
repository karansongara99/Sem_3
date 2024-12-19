class Node {
    int data;
    Node next;

    public Node(int data) {
        this.data = data;
        next = null;
    }
}

class P74 {
    Node head;

    public P74() {
        head = null;
    }

    public void insertAtEnd(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            newNode.next = newNode;
        } else {
            Node current = head;
            while (current.next != head) {
                current = current.next;
            }
            current.next = newNode;
            newNode.next = head;
        }
    }

    public void splitCircularLinkedList(P74 list1, P74 list2) {
        if (head == null) {
            return; // Empty list
        }

        Node slow = head;
        Node fast = head;

        // Find the middle node (slow pointer will point to it)
        while (fast.next != head && fast.next.next != head) {
            slow = slow.next;
            fast = fast.next.next;
        }

        // Split the list at the middle node
        list1.head = head;
        list2.head = slow.next;

        // Adjust the next pointer of the last node in list1
        slow.next = head;

        // Adjust the next pointer of the last node in list2
        Node current = list2.head;
        while (current.next != list2.head) {
            current = current.next;
        }
        current.next = list2.head;
    }

    public void printList() {
        if (head == null) {
            return;
        }

        Node current = head;
        do {
            System.out.print(current.data + " ");
            current = current.next;
        } while (current != head);
        System.out.println();
    }

    public static void main(String[] args) {
        P74 list = new P74();

        // Insert nodes (you can insert more nodes as needed)
        list.insertAtEnd(1);
        list.insertAtEnd(2);
        list.insertAtEnd(3);
        list.insertAtEnd(4);
        
        System.out.println("Original circular linked list:");
        list.printList();

        P74 list1 = new P74();
        P74 list2 = new P74();

        list.splitCircularLinkedList(list1, list2);

        System.out.println("List 1:");
        list1.printList();

       

        System.out.println("List 2:");
        list2.printList();
    }
}