void main() {
  final dictionary = {
    'love': 'an intense feeling of deep affection I have 4 my wife',
    'hate': 'feel intense or passionate dislike'
  };

  // retrieving info
  final definition = dictionary['love'];
  print(definition);

  // adding a key : value
  dictionary['dart'] = 'a incredible programming language';
  print(dictionary['dart']);

  // initilializing a map
  var dict = Map(); // This is called a literal
  var dictTwo = <String, String>{}; // using collection literals

  /* 
  Using the Map literal + KEY, VALUE type of the map. (Map<X, Y>();)
  */
  var dictThree = Map<String, String>();

  /* 
  If we wanted to have multiple values with different types
  we could use the keyword 'dynamic'.
  */
  var dictFour = <String, dynamic>{};

  /* 
  Maps can also be initialized using empty curly braces.
  */
  var dictFive = {};

  /* 
  Deleting a value inside a map.
  */
  dictionary.remove('hate');
  print(dictionary);

  /* 
  If you are unsure if a certain key exists inside the map, you
  can check it out.
  In a similar way you can use a method to check if a value exists
  inside the map.
  */
  final isHatePresent = dictionary.containsKey('hate');
  final equivalents = <String, int>{};
  equivalents.addAll({'Dart': 3, 'Flutter': 5});
  print(isHatePresent);
  print(equivalents.containsValue(3));

  /* 
  Iterating over all of the Map entries: you can use a method
  called 'forEach', which gives you the current key and value during
  the iteration.
  */

  equivalents.forEach((key, value) {
    print('$key means $value');
  });

  /* 
  Maps are great to model objects and sending data across the
  network too.
  */
  final user = <String, dynamic>{
    'name': 'Richard',
    'age': 25,
    'parents': ['Livia', 'Rodrigo']
  };
  user.forEach((key, value) {
    print('$key: $value');
  });
}
