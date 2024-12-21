class ObjectCounter {
    private static int count = 0;

    // Constructor
    ObjectCounter() {
        count++;
    }

    static int getCount() {
        return count;
    }

    public static void main(String[] args) {
        // Creating objects
        ObjectCounter obj1 = new ObjectCounter();
        ObjectCounter obj2 = new ObjectCounter();
        ObjectCounter obj3 = new ObjectCounter();

        // Printing the number of objects created
        System.out.println("Total number of objects created: " + ObjectCounter.getCount());
    }
}
