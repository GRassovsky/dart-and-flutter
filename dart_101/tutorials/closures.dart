
// Closure is a special funciton
// Within a closure you can mutate the value of variables present in the parent scope

void main()
{
	// Definition 1:
	// A closure is a function that has access to the parent scope, even after the scope has closed.
	String message = "Dart is good";
	
	Function showMessage = ()
	{
		message = "Dart is awesome";
		print(message); 
	};

	showMessage();


	// Definition 2:
	// A closure is a function object that has access to variables in its lexical scope,
	// even when the function is used outside of its original scope.
	Function talk = ()
	{
		String msg = "Hi";

		Function say = ()
		{
			msg = "Hello";
			print(msg);
		};

		return say;
	};

	var speak = talk();

	speak();		// This is the talk() function, which is the say() function which calls print(msg), and prints 'Hello'
}
