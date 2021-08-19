// There are no interfaces in Dart, but you can use the keyword 'implements'
// instead of 'extends' in order to make the overriding of functions by the
// sub class mandatory.

main()
{
	var tv = Television();
	tv.volumeUp();
	tv.volumeDown();
	tv.anotherMethod();
}

class Remote
{
	void volumeUp()
	{
		print("___Vol up from remote___");
	}

	void volumeDown()
	{
		print("___Vol down from remote___");
	}
} 


class AnotherClass
{
	void anotherMethod()
	{
		print("AnotherMethod called from AnotherClass");
	}
}


// When implementing you can inherit from multiple classes, but when you extend you can only extend from 1 class
class Television implements Remote, AnotherClass
{
	void volumeUp()
	{
		//super.volumeUp();		// Cannot call the super class from a function in a class which 'implements' another class
		print("___Vol up from television___");
	}

	void volumeDown()
	{
		print("___Vol down from television___");
	}

	void anotherMethod()
	{
		print("AnotherMethod called from Television");
	}
}