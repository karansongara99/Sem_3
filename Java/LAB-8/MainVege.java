public class MainVege {
    public static void main(String[] args) {
        Potato p = new Potato();
        Brinjal b = new Brinjal();
        Tomato t = new Tomato();
        System.out.println(p.toString());
        System.out.println(b.toString());
        System.out.println(t.toString());
    }
}

abstract class Vegetable {
    String color;

    abstract String tostring();
}

class Potato extends Vegetable {
    String tostring() {
        color = "Beige";
        return color;
    }
}

class Brinjal extends Vegetable {
    String tostring() {
        color = "Purple";
        return color;
    }
}

class Tomato extends Vegetable {
    String tostring() {
        color = "Red";
        return color;
    }
}