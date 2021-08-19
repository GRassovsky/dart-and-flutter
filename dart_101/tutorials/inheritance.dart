

void main()
{
	var cat = Cat();
	cat.age = 13;
	print("Cat color: ${cat.color}");
	cat.eat();
	cat.meow();


	var cat2 = Cat.myNamedCtor();
	print("Cat2 color: ${cat2.color}");
	


	var dog = Dog("Green");
	print("Dog color: ${dog.color}");
	dog.breed = "Husky";
	dog.eat();
	dog.bark();

}


// Super class Animal
// Every class inherits from an implicit Object Class at its base
class Animal
{
	Animal( String color )
	{
		this.color = color;
		print("Animal class ctor");
	}

	String color = "";

	void eat() { print("Animal eating..."); }
}



// Sub class Dog extends Animal (inherits from it)
class Dog extends Animal
{
	Dog(String color) : super(color)
	{
		print("Dog class ctor");
	}

	String breed = "";

	void bark() { print("Dog barking..."); }

	// Override the eat() func
	void eat()
	{ 
		super.eat();		// Calling the eat() func of the parent class
		print("Dog eating...");
	}
}



// Sub class Cat extends Animal (inherits from it)
class Cat extends Animal
{
	Cat() : super("Black")
	{
		print("Cat class ctor");
	}

	Cat.myNamedCtor() : super("Colourful")
	{
		print("Cat class myNamedCtor");
	}

	int age = 0;
	String color = "Black";	// Override the animal color member

	void meow() { print("Meowing..."); }
}