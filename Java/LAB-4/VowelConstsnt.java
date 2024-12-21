import java.util.*;

public class VowelConstsnt {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter Name :");
        String inputLine = scanner.nextLine();
        int vowelCount = 0;
        int consonantCount = 0;
        inputLine = inputLine.toLowerCase();
        for (char ch : inputLine.toCharArray()) {
            if (Character.isLetter(ch)) {
                if (isVowel(ch)) {
                    vowelCount++;
                } else {
                    consonantCount++;
                }
            }
        }
        System.out.println("vowels: " + vowelCount);
        System.out.println("consonants: " + consonantCount);
    }
    private static boolean isVowel(char ch) {
        return ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u';
    }
}