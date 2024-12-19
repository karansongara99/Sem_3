
class P59 {
    // Head of list
    Node head;

    // Linked list Node
    class Node {
        int data;
        Node next;

        Node(int d) {
            data = d;
            next = null;
        }
    }

    boolean areIdentical(P59 listb) {
        Node a = this.head, b = listb.head;
        while (a != null && b != null) {
            if (a.data != b.data)
                return false;

            a = a.next;
            b = b.next;
        }

        return (a == null && b == null);
    }

    void push(int new_data) {

        Node new_node = new Node(new_data);

        new_node.next = head;

        head = new_node;
    }

    public static void main(String args[]) {
        P59 llist1 = new P59();
        P59 llist2 = new P59();

        llist1.push(1);
        llist1.push(2);
        llist1.push(3);

        llist2.push(1);
        llist2.push(2);
        llist2.push(4);

        if (llist1.areIdentical(llist2) == true)
            System.out.println("Equla ");
        else
            System.out.println("Not Equal ");

    }
}

