


void main()
{
  // See funtion for usage of Fat Arrow
//  findArea(2, 3);
  
  // Optional Positional params
//  printCities("Sofia", "Plovdiv", "Varna", "Burgas");

  // Named Parameters
//  print("Volume: ${findVolume(3, l: 2,b: 2, printInside: true)}");
  
  // Default params
  print("Volume with default params: ${findVolumeDef(2, breadth:4)}");
}

// Default params
int findVolumeDef(int length, {int breadth = 3, int height = 2})
{
  return length * breadth * height;
}


// Optional positional params
//
// Have non-optional params before the optional ones
void printCities(String? n1, [String? n2, String? n3, String? n4])
{
  print("Name 1 is $n1"); // non-optional
  print("Name 2 is $n2"); // optional
  print("Name 3 is $n3"); // optional
  print("Name 4 is $n4"); // optional
}

// Named Parameters
//
// Any unnamed params should always appear first in the param list
// Also when Null Safety is on, required parameters have to be labeled as such
// Optional params can be left unrequired but SHOULD be nullable types
int findVolume( int h, {required int l, required int b, bool? printInside})
{
  int vol = h * l * b;
    
  if(printInside == true)
    print("[Internal log] Vol is $vol");
  
  return vol;
}


// Using the Fat Arrow
void findArea(int length, int width) => print("area: ${length * width}");
int findParameter(int length, int breadth) => 2 * (length + breadth);