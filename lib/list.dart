void list() {
  print("<-- Working with List -->");

  var numList = [1, 4, 5, 6, 8, 10];

  print(numList);

  // print the length of list

  print("Length of list: ${numList.length}");

  // adding item to list

  numList.add(20);
  print(numList);

  // removing item to list
  numList.remove(5);
  print(numList);

  // remove the last item of list
  numList.removeLast();
  print(numList);

  // remove item by its index
  numList.removeAt(1);
  print(numList);

  var loveBatMan = true;

  var heroes = [
    "Spider Man",
    "Iron Man",
    "Super Man",
    if (loveBatMan) "Bat Man"
  ];

  print(heroes);

  var listOfInts = [1, 2, 3, 4, 5];

  var listOfStrings = ["#0", for (var i in listOfInts) "#$i"];

  print(listOfStrings);

  // spreed operators to copy listOfInts values into myFavNums
  var myFavNums = [...listOfInts];
  print(myFavNums);
}
