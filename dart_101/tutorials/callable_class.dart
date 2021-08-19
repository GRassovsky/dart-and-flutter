
void main()
{
	var personOne = Person();
	var msg = personOne(25, "Peter");

	print(msg);
}

class Person
{
	// Any class can become a callable class by implementing the call() method
	String call(int age, String name)
	{
		return "The name of the person is $name and their age is $age";
	}
}