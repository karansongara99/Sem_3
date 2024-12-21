
import java.util.Scanner;

/* Book Class */

class Book {
    private String author_name;

    public void setAuthor_name() {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter Author Name:");
        author_name = sc.nextLine();
    }

    public String getAuthorName() {
        return author_name;
    }
}

/* Book Publication */

class BookPublication extends Book {
    String title;

    public void settitle() {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter Title Name:");
        title = sc.nextLine();
    }

    public String getitle() {
        System.out.println("Book Author Name:" + getAuthorName());
        return title;
    }
}

/* Paper Publication */

class PaperPublication extends Book {
    String title;

    public void settitle() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Title Name:");
        title = sc.nextLine();
    }

    public String getitle() {
        System.out.println("Book Author:" + getAuthorName());
        return title;
    }
}

/* Main Class */
public class BookAuthor {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BookPublication b = new BookPublication();
        PaperPublication p = new PaperPublication();
        b.setAuthor_name();
        b.settitle();
        p.setAuthor_name();
        p.settitle();
        System.out.println(b.getitle());
        System.out.println(p.getitle());
    }
}