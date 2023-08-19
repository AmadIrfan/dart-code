void main() {
  var myFuture = Future(() {
    return 'hallo ';
  });
  print(myFuture
      .then((value) => print(value))
      .then((value1) => print('amad'))
      .catchError((error) {
    print(error);
  }));
}
