/* 
By importing this file, I can access the top-level functions,
variables, and classes for instance.
top-level: functions, variables, or classes that aren't nested
in other functions, nethods, or classes. For instance, the main
function is a top-level declaration.
*/

import 'code_to_import/file_to_import.dart' as file1;
import 'code_to_import/file_to_import2.dart' hide thisFunctionWillConflict;
/* 
When two functions have the same name in both imports,
dart doesn't know what of them use. For this, we can use the 
'as' keyword to give each import a name.
*/

void main() {
  print(file1.numberToImport);
  file1.functionToImport();
  file1.thisFunctionWillConflict();
  // Below code doesn't work, since it got hidden by 'hide' keyword
  // file2.thisFunctionWillConflict();
}
