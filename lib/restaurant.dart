class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numRatings => ratings.length;
  String? avgRating() {
    if (ratings.isEmpty) {
      return null;
    }
    return (ratings.reduce((value, element) => value + element) /
            ratings.length)
        .toStringAsFixed(2);
  }

  void getInfo() {
    print("Restaurant: $name | Cuisine: $cuisine");
  }
}

void restaurant() {
  final rest1 = Restaurant(
      name: 'Pizza Mario', cuisine: 'Italian', ratings: [4.0, 3.5, 4.5]);
  final rest2 = Restaurant(
      name: 'Chez Anne', cuisine: 'French', ratings: [5.0, 4.5, 4.0]);
  final rest3 = Restaurant(
      name: 'Navaratna', cuisine: 'Indian', ratings: [4.0, 4.5, 4.0]);

  rest1.getInfo();
  print('Average Rating of ${rest1.name} : ${rest1.avgRating()}');

  rest2.getInfo();
  print('Average Rating of ${rest2.name} : ${rest2.avgRating()}');

  rest3.getInfo();
  print('Average Rating of ${rest3.name} : ${rest3.avgRating()}');
}
