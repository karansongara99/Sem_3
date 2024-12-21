class Animal {
	int a;
	Animal(int x) {
		{
			a = x ;
		}
	}
	void display(){
		System.out.println("A = "+a);
	}
}

class Dog extends Animal {
	int a;
	Dog(int x) {
		super(x);
	}
	void display(){
		super.a = 1;
		a=2;
	}
	void print(){
		super.display();
		display();
	}
}

// Driver Program
class SuperKey {
	public static void main(String[] args) {
		SuperKey sk = new SuperKey();
		Dog d = new Dog(10);
		d.print();
	}
}
