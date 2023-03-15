void main() {
  var user =
      User(email: 'test@gmail.com', name: 'Test'); // Instantiation of User
  user.email; // User object.property to get a property of a class
  user.printInfo();

  var enzo = Enzo();
  enzo.showName('Enzo');
  enzo.showAge(17);
  enzo.showEmail('test@gmail.com');

  final test = UnitTest();
  test.testOne();

  final userTwo = UserTwo(name: 'Enzo');
  userTwo.happyFace();
}

// Class: works like a blueprint for objects.
class User {
  // User Properties
  String email;
  String name;

  // Constructor, used to instantiate
  // 'this' is used to refer to the current class object variables/properties
  User({required this.email, required this.name});

  // Methods
  void printInfo() {
    print('e-mail: $email\nname: $name');
  }
}

class Person {
  void showName(String name) {
    print(name);
  }

  void showEmail(String email) {
    print(email);
  }

  Person(); // constructor
}

/* 
Since Enzo is a person, we can use something from OOP called inheritance.
That is, the process of deriving properties and characteristics 
from another class. Classes can only inherit from ONE class.
*/
class Enzo extends Person {
  /* 
  If for instance, we want to access a method from the base class inside
  our child class, we can use the 'super' keyword. Then we are reffering to the
  superclass, AKA base or parent class.
  */
  void showAge(int age) {
    super.showName('Enzo');
    print(age.toString());
  }

  /* 
  We can also overwrite the parent/base class methods in Enzo.
  Using the override notation and by also write the function again just
  like in Person class.
  */
  @override
  void showEmail(String email) {
    print('Enzo\'s email: $email');
  }

  Enzo();
}

/* 
Abstract classes: they cannot be directly instatiated, but any of their
subtypes can. Abstract classes can be used with 2 keywords, 'extends' and
'implements'. Since they cannot be directly instatiated, they also doesn't have
a constructor.
*/
abstract class Test {
  /// This is an abstract method because it has no body.
  void testOne();

  /// This is NOT an abstract method because it has a body.
  void testTwo() {}

  // No constructor as well
}

class UnitTest extends Test {
  // 'extends' keyword usage.
  /// You need to override the abstract method, otherwise, it throws an error.
  @override
  void testOne() {
    print('hello!');
  }

  /// Notice that was no need to override all superclass methods.
}

class UnitTestTwo implements Test {
  // 'implements' interface usage.
  @override
  void testOne() {
    print('hello!');
  }

  @override
  void testTwo() {
    print('also hello!');
  }

  /// Notice that it was needed to override all of the superclass methods.
}

class UserTwo with Happy, Sad {
  // You can also use trailling commas.
  // attaching Happy mixin using 'with' keyword.
  final String name; // using keyword final as name is immutable
  UserTwo({required this.name});
}

/* 
Mixin: is a way to reuse a class's code in multiple cases. Sort of a class
that can be 'associated' with another class in order to reuse pieces
WIHOUT INHERITANCE.
A class can have an infinite number of mixins. Once you assign a mixin to
a class, it automatically gets access to all of the methods declared in the
mixin.
Mixins classes declares no constructors, however, they can also have properties
just like normal classes.
*/
mixin Happy {
  bool iAmHappy = true;
  void happyFace() => print(':)');
}

mixin Sad {
  void sadFace() => print(':(');
}

/*
You can use the 'on' keyword to restricts the type that uses a mixin, telling
that it can only be used with a certain class.
*/
mixin Frustrated on UserTwo {
  void frustratedFace() => print(':/');
}
