void main() {
  /* 
  The use of variables as final or const, can promote
  some benefits for both the user and the computer:
    ->  The user that is reading your code will know that this variable
        is not intended to change in anytime, never. This helps to avoid
        bugs and unnecessary statements.

    ->  When we tell the program that a variable will only have one
        value, the compiler can do some tricks to optimize our application.  
  */

  /* 
  'final' is a runtime constant. This means that its value
  CAN be assigned at runtime instead of compile-time. And also
  that once its value is defined, it can't be changed.
  */
  final population = 12000; // Without a type annotation.
  final int populationTwo = 120000; // Using type annotation.

  /* 
  'const' is almost equal to final, the difference is that it
  is a compile-time constant, meaning that its value is defined
  and 'frozen', completely immutable at compile-time.
  */

  // var emptyList = const [];
  const emptyList = []; // This is preffered
  const name = 'Enzo';
  const planetWhereHeLives = 'Earth';
}
