void map() {
  print("Learning about Map in Dart");

  /* Map is a key value pairs */

  // create a map

  var fruits = {"summer": "Mango", "rain": "Orange", "winter": "Apple"};

  // create a map with Map Constructor

  var nobelGases = Map<int, String>();

  nobelGases[2] = "Helium";
  nobelGases[10] = "Neon";
  nobelGases[18] = "Argon";

  // create a const man

  final constMap = const {2: "helium", 10: "Neon", 18: "Argon"};

  nobelGases.forEach((key, value) {
    print("$key : $value");
  });
}
