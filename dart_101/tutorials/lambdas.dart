
// High-order functions, lambdas, closures

main()
{
	// **** 1st way: write out the function without a name

	// A lambda which doesn't return anything
	Function addTwoNumbers = (int a, int b)
	{
		var sum = a + b;
		print(sum);		
	};

	// Calling the add lambda
	addTwoNumbers(2, 5);


	// A lambda which returns a type
	var multiplyByFour = (int num)
	{
		return num * 4;
	};


	print(multiplyByFour(5));


	// 2nd way: Function Expression using FAT Arrow

		Function addTwoNumbers_v2 = (int a, int b) => print(a+b);

		var multiplyByFour_v2 = (int num) => num * 4;

		addTwoNumbers_v2(2,5);
		print(multiplyByFour_v2(5));
}

// a nameless function is an anonymous (or nameless) function

// normal function
int addMyNumbers(int a, int b)
{
	var sum = a + b;
	return sum;
}

