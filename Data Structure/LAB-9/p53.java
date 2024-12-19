import java.util.Arrays;

public class p53 {
    private int[] queue;
    private int size;
    private int capacity;

    public p53(int capacity) {
        this.capacity = capacity;
        this.queue = new int[capacity];
        this.size = 0;
    }

    // INSERT operation
    public void insert(int value) {
        if (size == capacity) {
            System.out.println("Queue is full! Cannot insert " + value);
            return;
        }
        // Insert the new element at the end of the queue
        queue[size] = value;
        size++;
        // Sort the queue to maintain priority order
        Arrays.sort(queue, 0, size);
    }

    // DELETE operation
    public int delete() {
        if (size == 0) {
            System.out.println("Queue is empty! Cannot delete.");
            return -1; // Indicating the queue is empty
        }
        // The highest priority element is at the end of the sorted array
        int highestPriority = queue[size - 1];
        size--; // Reduce size to remove the element
        return highestPriority;
    }

    // DISPLAY operation
    public void display() {
        if (size == 0) {
            System.out.println("Queue is empty!");
            return;
        }
        System.out.print("Priority Queue elements: ");
        for (int i = 0; i < size; i++) {
            System.out.print(queue[i] + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        p53 pq = new p53(5);
        
        pq.insert(10);
        pq.insert(20);
        pq.insert(15);
        
        pq.display(); // Display current elements in the queue
        
        System.out.println("Deleted element: " + pq.delete()); // Delete highest priority element
        
        pq.display(); // Display elements after deletion
        
        pq.insert(30);
        
        pq.display(); // Final display of elements
    }
}