
// We cannot access static memebers through an instance of the class object
// Advantage is that it can save memory (because of lazy initialisation and one-time-initialisation)

main()
{
	print("Pi is: ${Circle.pi}");		// We can access a static member directly without an instance of the class

	var cir = Circle();
	//print(cir.pi);					// We can't do this...
	//cir.calculateArea();				// We can't do this...
	cir.myNormalFunction();				// Can call the static function from wihtin the normal member function
}

class Circle
{
	static const double pi = 3.14;		// Non-changeable
	static int maxRadius = 5;			// Changeable

	static void calculateArea()
	{
		print("evaluate area");
	}

	// A member function that calls a bunch of static funcs and members
	void myNormalFunction()
	{
		calculateArea();
		print("Max radius: ${maxRadius}");
	}
}