import java.util.*;

public class p54 {
    public static void main(String[] args) {
        // Initialize the stack to hold feathers
        Stack<String> feathers = new Stack<>();
        
        // Example input: 10 queries as a single string
        String input = "buy_red buy_blue buy_green fetch fetch buy_yellow fetch fetch fetch fetch";
        
        // Split the input into individual queries
        String[] queries = input.split(" ");
        
        // Process each query
        for (String query : queries) {
            if (query.startsWith("buy_")) {
                // Extract color name and add it to the stack
                String color = query.substring(4); // Get the color name after "buy_"
                feathers.push(color);
            } else if (query.equals("fetch")) {
                // Check if there are feathers to fetch
                if (!feathers.isEmpty()) {
                    // Fetch the bottom feather, which is at index 0
                    String bottomFeather = feathers.firstElement();
                    System.out.println(bottomFeather); // Print the bottom feather color
                    
                    // Move it to the top of the stack
                    feathers.remove(0); // Remove from bottom
                    feathers.push(bottomFeather); // Add it back on top
                } else {
                    System.out.println("No feathers available");
                }
            }
        }
    }
}