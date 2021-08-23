// Types
//
// Why types:
// - performance (no dymaic type checking)
// - easier to work on large projects
// - less of a need to write unit tests (asserts)
// - automatically find simple errors

void main() 
{
  var name = myName();
  
  // Once a variable in Dart has a type associated with it,
  // the variable type cannot change, which is why 'name' cannot
  // be assigned to an int here, because it was initialised with
  // a String.
//   name = 3;
  print('My name is $name');
  
  // Unless you have explicitly declared the variable
  // as 'dynamic' in which case you will be able to change the
  // assigned type
  dynamic x = 'bla';
  x = 123;
  print('x is $x');
}


String myName()
{
  return 'George';
}