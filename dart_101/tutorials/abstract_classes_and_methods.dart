
main()
{
	var rec = Rectangle();
	rec.draw();

	var cir = Circle();
	cir.draw();
	cir.normalFunction();
}


// Abstract classes cannot be instantiated
abstract class Shape
{
	void draw(); 	// Abstract method (no method body)

	void normalFunction() { print("Non-abstract function called"); }
}

class Rectangle extends Shape
{
	void draw()
	{
		// Defining the method body
		print("Drawing rectangle");
	}
}


class Circle extends Shape
{
	void draw()
	{
		// Defining the method body
		print("Drawing circle");
	}
}