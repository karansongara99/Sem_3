import java.awt.event.KeyListener;
import java.awt.event.MouseListener;
import java.util.EventListener;

public class Event {
    public static void main(String[] args) {
        EventDemo ed = new EventDemo();
        ed.mouseMoved();
    }
    
}

class EventDemo implements MouseListener,KeyListener{
    void performEvent(){
        System.out.println("Performing Event.......");
    }
    void mouseClicked(){
        System.out.println("Mouse Clicked....");
    }
    void mousePressed(){
        System.out.println("Mouse Press....");
    }
    void mouseReleased(){
        System.out.println("Mouse Release....");
    }
    void mouseMoved(){
        System.out.println("Mouse Move....");
    }
    void mouseDragged(){
        System.out.println("Mouse Dragged....");
    }
    void keyPressed(){
        System.out.println("Key Pressed....");
    }
    void keyReleased(){
        System.out.println("Key Releaesed");
    }
}

interface EventListner{
    void performEvent();
}

interface MouseListner extends EventListener{

    void mouseClicked();
    void mousePressed();
    void mouseReleased();
    void mouseMoved();
    void mouseDragged();
    void performEvent();
}

interface KeyListner extends EventListener{
    void keyPressed();
    void keyReleased();
    void performEvent();
}