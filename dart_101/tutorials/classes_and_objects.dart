
void main()
{
	var student1 = Student(23, "Peter"); // new Student() -- where new is optional
	// var student2 = Student();
	print("${student1.id} and ${student1.name}");

	student1.sleep();
	student1.study();

	var student2 = Student.myCustomEmptyConstructor();
	student2.id = 18;
	student2.name = "Foo";
	print("${student2.id} and ${student2.name}");

	var student3 = Student.myCustomNamedConstructor(15, "Bar");
	print("${student3.id} and ${student3.name}");
}

// Define properties and behaviour of a Student
class Student
{
	// Instance or Field var, default value is null
	int id = -1;
	String name = "";


	// Default ctor
	// Student()
	// {
	// 	print("Running default ctor");
	// }

	// Custom/parameterised. When I have this, I can't have the default ctor it seems
	// Student(int id, String name)
	// {
	// 	print("Running custom/parameterised ctor");
	// 	this.id		= id;
	// 	this.name	= name;
	// }

	// A ctor can be further trimmed down this way:
	Student(this.id, this.name);

	// This is an empty named constructor
	Student.myCustomEmptyConstructor();

	// This is a named constructor
	Student.myCustomNamedConstructor(this.id, this.name);


	// Member functions
	void sleep()
	{
		print("${this.name} is sleeping");
	}

	void study()
	{
		print("${this.name} is studying");	
	}
}