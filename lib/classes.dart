class Person {
  /* 3 ways to declare constructor  */
  /* -- 1st one */
  /*    Person(String name, int age, double height){ */
  /* this.name = name; */
  /* this.age = age; */
  /* this.height = height; */
  /*    } */
  /* -- 2nd one */
  /* Person({ */
  /*   required String name, */
  /*   required int age, */
  /*   required double height, */
  /* })  : name = name, */
  /*       age = age, */
  /*       height = height; */
  /* -- 3rd one */
  Person({required this.name, required this.age, required this.height});

  String name;
  int age;
  double height;

  void printDescription() {
    print("My name is $name. I am $age years old. I am $height meters tall.");
  }
}

class BankAccount {
  BankAccount(
      {required String this.accountHolderName, double this.balance = 0});

  final String accountHolderName;
  double balance;
}

void classes() {
  final person1 = Person(name: "Mike", age: 22, height: 1.55);
  person1.printDescription();

  final mikeAccount =
      BankAccount(accountHolderName: person1.name, balance: 200);
}
