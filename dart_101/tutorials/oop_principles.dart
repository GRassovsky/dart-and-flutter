

void main()
{
	var student = Student();
	student.name = "Peter";		// Calling default Setter to set value
	print(student.name);		// Calling default Getter to get value

	student.percentage = 438.0;	// Calling Custom Setter to set value
	print("Student percentage: ${student.percentage}");
}


class Student
{
	String name = "";			// Instance variable with default Getter and Setter

	double _percent = 0.0;		// Private Instance var to its own library

	// Instance vaar with Custom Setter
	void set percentage(double marksSecured) => _percent = (marksSecured / 500.0) * 100.0;

	// Instance var with Custom Getter
	double get percentage => _percent;
}