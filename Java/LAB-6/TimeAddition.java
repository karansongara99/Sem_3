public class TimeAddition {
    int hours;
    int minutes;

    TimeAddition() {
        hours = 10;
        minutes = 40;
    }

    TimeAddition(int hours, int minutes) {
        this.hours = hours;
        this.minutes = minutes;
    }

    void TimeAddtion(TimeAddition t1) {
        this.hours = t1.hours;
        this.minutes = t1.minutes;
    }

    void TimeAddition(TimeAddition t1,TimeAddition t2){
        this.hours = t1.hours + t2.hours;
        this.minutes = t1.minutes + t2.minutes;
    }

    public static void main(String[] args) {
        TimeAddition t1 = new TimeAddition();
        TimeAddition t3 = new TimeAddition();
        TimeAddition t2 = new TimeAddition(2, 30);
        t3.TimeAddition(t1, t2);
        System.out.println("Defualt Time: "+t1.hours+" "+t1.minutes);
        System.out.println("Addtion Time: "+t3.hours+" "+t3.minutes);
        System.out.println("Parameter Time: "+t2.hours+" "+t2.minutes);
        TimeAddition t4 = new TimeAddition();
        System.out.println("Copy Constructor: "+t4.hours+" "+t4.minutes);
    }
}
