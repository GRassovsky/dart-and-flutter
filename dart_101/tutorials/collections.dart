
// Collections (data structures) in Dart
// Lists (Array)
// - Fixed-length lists
// - Growable-length lists
// Sets
// - HashSets
// Maps
// - HashMaps


main()
{
	// fixedLists();		// eg Array

	// growableLists();		// eg Vector

	// hashSets(); 			// Unordered collection of unique items (eg Linked List)

	hashMaps();				// Unordered collection of key-value pairs (eg Map or Dictionary)
}

//
//	Fixed List
//
void fixedLists()
{
	// In a fixed list we cannot use List functions such as: add, remove, clear, etc!!!

	// We can't just use the default ctor of list anymore because it's non-nullable:
	// List<int> deprecatedList = List(5);

	// Fixed-length list (initialised to 0s)
	List<int> fixedNumList = List.filled(5, 0);		

	// Another way to do the same thing: 
	var fixedNumList_v2 = new List<int>.filled(5, 0, growable: false);
	fixedNumList_v2[0] = 2;
	fixedNumList_v2[1] = 22;
	fixedNumList_v2[2] = 222;
	fixedNumList_v2[3] = 2222;
	fixedNumList_v2[4] = 22222;

	// Print out the last element of the fixed List
	print(fixedNumList_v2[fixedNumList_v2.length-1]);



	// Iterate through our first List
	for (int element in fixedNumList)
	{
		print(element);
	}

	// Another way to iterate through our 2nd List using the forEach loop, which takes a lambda expression
	fixedNumList_v2.forEach((element) => print(element));


	// Yet another way to loop through a List using a primitive array
	for (int i=0; i<fixedNumList_v2.length; i++)
	{
		print(fixedNumList_v2[i]);
	}
}


//
//	Dynamic List
//
growableLists()
{
	List<int> growableNumList = List.filled(0, 0, growable:true);

	// Use add (essentially push_back)
	growableNumList.add(99);
	growableNumList.add(88);
	growableNumList.add(77);

	print(growableNumList[0]);		// Output: 99

	// This would remove the element '99' and dynamically shift everything else down
	growableNumList.remove(99);

	print(growableNumList[0]);		// Output: 88

	// Add '66' to the end of the List
	growableNumList.add(66);
	// Loop through the dynamic array and print out the elements
	print("---");
	growableNumList.forEach((elem) => print(elem));

	// Remove the element at index '1' (eg '77')
	growableNumList.removeAt(1);
	// Check what got removed
	print("---");
	growableNumList.forEach((elem) => print(elem));

	// Delete all the elements of the List
	growableNumList.clear();
	print("---");
	growableNumList.forEach((elem) => print(elem));

	// ------------------------------------------

	// Another way to declare a growable List
	List<String> anotherGrowableList = ["A", "B", "D"];

	anotherGrowableList.forEach((elem) => print(elem));

	// Insert the missing 'C' in index 2
	anotherGrowableList.insert(2, "C");

	// Append a 'E' to the end
	anotherGrowableList.add("E");

	print("---");
	anotherGrowableList.forEach((elem) => print(elem));
}


//
//	Hash Set
//
void hashSets()
{
	// Method 1: from a List
	Set<String> countries = Set.from(["USA", "Bulgaria", "Afghanistan"]);

	// Method 2: via the default ctor (Set is allowed that) 
	Set<int> numbersSet = Set();
	numbersSet.add(1);
	numbersSet.add(11);
	numbersSet.add(111);
	numbersSet.add(1111);

	// Print out all the elements of the Set
	// Since the Set is an unordered collection, the order is not guaranteed 
	numbersSet.forEach((num) => print(num));

	// All of the adds below will be ignored because a Set only contains unique elements
	numbersSet.add(1111);
	numbersSet.add(1111);
	numbersSet.add(1111);
	numbersSet.add(1111);

	print("---");
	numbersSet.forEach((num) => print(num));
}



//
//	Hash Map
//
void hashMaps()
{
	// Each Key in a Map should be unique!
	// but the Value can be repeated

	Map<String, String> fruitMap = Map();
	fruitMap["apple"] = "green";
	fruitMap["apple"] = "yellow";
	fruitMap["apple"] = "red";

	fruitMap.forEach((fruit, colour) => print("${fruit} - ${colour}"));	// Prints only 'apple - red'

	fruitMap["banana"] = "yellow";
	fruitMap["tomato"] = "red";	// yes, tomato is a fruit!

	// Print out just the keys
	print("---");
	for(String key in fruitMap.keys)
	{
		print(key);
	}

	print("---");
	fruitMap.forEach((fruit, colour) => print("$fruit - $colour"));


	// If the Map contains the key "apple" update its value to "green"
	if( fruitMap.containsKey("apple") )
	{
		fruitMap.update("apple", (value) => "green");
	}

	print("---");
	fruitMap.forEach((fruit, colour) => print("$fruit - $colour"));

	
	// ---------------------------------

	// Another way to declare a Map
	Map<String, int> students = 
	{
		"Jeff": 17,
		"Sarah": 22,
		"Toby": 20
	};
}

