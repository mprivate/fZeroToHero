void main() {
  final language = Languages.dart;

  /* 
  You'll get a warning if you don't handle all of the enum's values in a
  switch statement.
  */
  switch (language) {
    case Languages.dart:
      {
        print(Languages.dart);
        break;
      }
    case Languages.java:
      {
        print(Languages.java);
        break;
      }
    case Languages.python:
      {
        print(Languages.python);
        break;
      }
  }

  /* 
  Each value in a Enum has it's own index. So then you can use them where
  order matters.
  Assert is a keyword used to test assumptions about the state of the program
  serving as a debugging aid.
  */
  assert(Languages.dart.index == 0, 'Error detected');

  /* 
  If you need to get a list of every single value in the Enum you can always use
  your enums's 'values' constant.
  */
  final languages = Languages.values;
}

/* 
Enum: kind of class to represent a fixed number of constant values.
Usually used to reduce mistyping values or transposing and
make code way easier to read.
In dart, you can't give values to Enums. If you need too assign it
create a class instead.
*/
enum Languages { dart, java, python }
