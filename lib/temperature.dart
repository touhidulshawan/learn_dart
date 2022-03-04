class Temperature {
  Temperature.celsius(this.celsius); // named constructor
  Temperature.farenheit(double farenheit)
      : celsius = (farenheit - 32) / 1.8; // named constructor
  double celsius;

  double get farenheit => celsius * 1.8 + 32; // getter

  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8; // setter
}

void temperature() {
  final temp1 = Temperature.celsius(25);
  final temp2 = Temperature.farenheit(40);

  print(temp1.celsius);
  temp2.farenheit = 45;
  print(temp2.farenheit);
}

