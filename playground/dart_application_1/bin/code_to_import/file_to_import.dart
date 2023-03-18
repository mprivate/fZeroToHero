const numberToImport = 42;

void functionToImport() {
  print('I\'m from an imported function');
}

void thisFunctionWillConflict() {
  print('I have the same as name as a function in file2');
}
