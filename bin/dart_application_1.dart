/* 
async: this keyword defines that the function is
asynchronous, put it just before it's body.
*/
void main() async {
  /* 
  Asynchronous code: lets your program complete work while
  waiting for another operation to finish. Once initiated, an
  asynchronous operation allows other operations to execute
  before it completes. Examples of async applications are:
  -> Fetching data over the network;
  -> Writing/Reading to a database;
  -> Creating a timer in your app;
  */

  /* 
  await: this keywork makes the program wait for the future
  to be completed to proceed. It only waits INSIDE
  ASYNC FUNCTIONS.
  */
  await fetchNews();
  print('Fetching news');
  myFunction();
}

/* 
Future: simply represents the result of an async operation in
dart. It can have two states:
* Incomplete:
  The async operation is still running, which means that it
  will return an Incomplete future.
* Complete:
  The async operation has succeeded and the future completes
  with a value/error.
    -> Value: if it succeeds
    -> Error: if it fails
*/

Future<void> fetchNews() {
  // Imagine that this function is fetching the news
  // It has a delay of 2 seconds to represent the fetching
  return Future.delayed(
      const Duration(seconds: 2), () => print('News fetched'));
}

Future<List<num>> fetchNewsTwo() {
  return Future.delayed(Duration(seconds: 2), () => [1, 2, 3]);
}

void myFunction() async {
  await fetchNews();
}
