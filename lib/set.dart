void setInDart() {
  print('Working with set');

  // creating a set
  var names = <String>{};

  names.add("Mike");
  names.add("Tom");
  names.add("Mike"); // not store duplicate value
  names.add("John");

  print(names);

  var randomNumbers = {4, 5, 3, 6};
  print(randomNumbers);

  /* copy value from another set */

  var copyNames = {...names};
  print("Copy Set: $copyNames");

  var heroes = ["SuperMan", "SpiderMan", "IronMan", "BatMan", "SpiderMan"]; //

  var myFavSuperHeroes = {...heroes}; // remove duplicate value
  print(myFavSuperHeroes);
}
