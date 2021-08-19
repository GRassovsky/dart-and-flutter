
// Higher-order function
// - can accept a function as a parameter
// - can return a function
// - or can do both

main()
{
	// Example One: passing in a fucntion
	Function addNumbers = (int a, int b) => print(a+b);
	someOtherFunction("Higher-order function addNumbers:", addNumbers);

	// Example Two: returning a function
	Function multiplyFour = taskToPerform();
	print("Higher-order function multiplyFour: ${multiplyFour(4)}");
}

// Example One: A higher-order func taking in a func in its params
void someOtherFunction(String message, Function myFunction)
{
	print(message);
	myFunction(2,4);
}

// A higher-order func returning a func
Function taskToPerform()
{
	Function multiplyFour = (int num) => num * 4;
	return multiplyFour;
}