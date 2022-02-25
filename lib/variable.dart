late String username; // late variables

void learnVariable() {
  print("< Working with Variable in Dart >");

  // int type variable
  int number = 10;

  // double type variable
  double num = 10.34;

  // string type variable
  String name = "John";

  // boolean type variable
  bool isRaining = false;

  // accessing variable

  print("Integer : $number");
  print("Double: $num");
  print("String: $name");
  print("Boolean: $isRaining");

  /* type inference */

    var password = "john1234";

    // Here we do not give password any type but because of var keyword it
    // automatically infer type from it's value 
    print("Password: $password");

  // Late variables

  // late keyword is used to declare a late variable
  /* 
    Late variable has two cases 

    1. Declaring a non-nullable variable that’s initialized after its declaration.
    2. Lazily initializing a variable
    */

  /* Here username is  the late variable */
  username = "johnsmith";
  print(username);

    // If we never want to change a variable then we can use final or const
    // keyword

    /* without type anotation */
    final personName = "John";
    final String nickname = "Smith";

    // now test if we can change these variable or not

    /* personName = "Bob"; */
    /* so we can not change the value */

    /* var personName = "Mike"; */
    // so we can not either redeclare the variable

    // const type variable

    const myNum = 10;

    /* give this error */
    /* myNum = 20; */ 

    /* var myNum = 20; */
}
