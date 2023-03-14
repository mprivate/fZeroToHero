void main() {
  print(isEven(2));
  final bmi = calculateBMITwo(weight: 66, height: 172);

  // Using the optional positional parameter.
  final bmi2 = calculateBMIThree(66, 172, 'Enzo');

  // NOT using the optional positional parameter.
  final bmi3 = calculateBMIThree(66, 172);

  // Intentionally not overriding an optional parameter default value
  final bmi4 = calculateBMIFour(weight: 66);
}

/*
bool isEven(int number) {
  // return number % 2 == 0 ? true : false;
  if (number % 2 == 0) {
    return true;
  }
  return false;
}
*/

/* (condition) ? (if true, do this) : (otherwise, do this) */
bool isEven(int number) => number % 2 == 0 ? true : false;

/*
Normal parameters: are required, therefore they
don't need a default value. Separed by trailling commas.
In this format they are also positional parameters.
*/
int calculateBMI(double weight, double height) {
  return 1;
}

/* 
Named parameters: you call them by their names, therefore,
they are preffered since they avoid unnecessary confusion.
They are required using the 'required' annotation, otherwise,
they are optional.
*/
int calculateBMITwo({required double weight, double? height}) {
  return 2;
}

/* 
Optional Position Parameters: here, you can wrap a set of function parameters
at the END OF THE DECLARTAION into [], to indicate that they are optional
positional parameters.
*/
int calculateBMIThree(double weight, double height, [String? name]) {
  return 3;
}

/* 
Default parameters values: when using optional parameters, you can also
define a default value, so that users doesn't have to explicitly list them whem
calling the function if they want.
*/
int calculateBMIFour({required double weight, double height = 170}) {
  return 4;
}

// They can also be used for optional positional parameters
int calculateBMIFive(double weight, double height, [String name = 'Enzo']) {
  return 5;
}
