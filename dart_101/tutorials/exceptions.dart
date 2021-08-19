//import 'package:cli/cli.dart' as cli;

void main(List<String> arguments)
{
//  print('Hello world: ${cli.calculate()}!');
  
  // Tutorial: Smartherd 7.1
	// exceptionHandlingTut();

	// Tutorial: Smartherd 7.2
	customExceptionHandlingTut();
}




void customExceptionHandlingTut()
{
	print("==================================");
	print("Custom Exception handling Tutorial");
	print("==================================");

	try
	{
		depositMoney(-200);
	} on DepositException catch (e)
	{
		print(e.errorMessage());
	}
	finally
	{
		print("Exiting deposit program.");
	}
}


class DepositException implements Exception
{
	String errorMessage()
	{
		return "You cannot enter amount less than or equal to 0";
	}
}

void depositMoney(int amount)
{
	if(amount <= 0)
	{
		throw new DepositException();
	}
}


// =================================================================


void exceptionHandlingTut()
{
	print("===========================");
	print("Exception handling Tutorial");
	print("===========================");

	// CASE 1: When you know the exception to be thrown, use the ON clause
	// Exception code against dividing by zero using IntegerDivisionByZeroException
	print("\nCASE 1: knowing the exception");
	try
	{
		int result = 12 ~/ 0;
		print("The result is $result");
	} on IntegerDivisionByZeroException
	{
		print("Cannot divide by zero");
	}


	// CASE 2: When you DO NOT know the exception to be thrown, use the CATCH clause
	print("\nCASE 2: catching the exception");
	try
	{
		int result = 12 ~/ 0;
		print("The result is $result");
	} catch(e)
	{
		print("The exception thrown is $e");
	}


	// CASE 3: Using the STACK TRACE to know the events that have occurred prior to the Exception
	print("\nCASE 3: printing the stack trace");
	try
	{
		int result = 12 ~/ 0;
		print("The result is $result");
	} catch(e, s)
	{
		print("The exception thrown is $e");
		print("STACK TRACE: $s");
	}


	// CASE 4: Whether there is an exception or not, the Finally clause is always executed
	// That way if you return in your catch block, the finally will still run!
	print("\nCASE 4: finally clause");
	try
	{
		int result = 12 ~/ 0;
		print("The result is $result");
	} catch(e, s)
	{
		print("The exception thrown is $e");
		return;
	} finally
	{
		print("This is a FINALLY clause and is always executed!");
	}
}