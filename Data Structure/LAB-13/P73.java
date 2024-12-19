
class Node {
    int data;
    Node prev;
    Node next;

    public Node(int data) {
        this.data = data;
        prev = null;
        next = null;
    }
}

class P73 {
    Node head;
    Node tail;

    public P73() {
        head = null;
        tail = null;
    }

    public void deleteAlternateNodes() {
        if (head == null || tail == null) {
            return; // Empty list or single node list
        }

        Node current = head;
        while (current != null && current.next != null) {
            Node temp = current.next;
            current.next = temp.next;
            if (temp.next != null) {
                temp.next.prev = current;
            } else {
                tail = current;
            }
            current = current.next;
        }
    }

    public void push(int new_data) {
        Node new_node = new Node(new_data);

        // 3. Make next of new Node as head
        new_node.next = head;

        // 4. Move the head to point to
        // new Node
        head = new_node;
    }

    void printList() {
        Node temp = head;
        while (temp != null) {
            System.out.print(temp.data + " ");
            temp = temp.next;
        }
        System.out.println();
    }

    public static void main(String[] args) {
        P73 list = new P73();

        list.push(4);
        list.push(3);
        list.push(2);
        list.push(1);

        System.out.println(
                "Linked List before calling deleteAlternateNodes() ");
        list.printList();

        list.deleteAlternateNodes();

        System.out.println(
                "Linked List after calling deleteAlternateNodes() ");
        list.printList();
    }
}