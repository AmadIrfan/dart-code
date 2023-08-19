void main() {
  List<String> st = [];
  String name = 'Amad Irfan Khan is my name 1...';
  if (name.contains('.')) {
 name= name.replaceAll(r'.', '');
    print(name.contains('.'));
    print(name);
  }
  st = name.split(' ');
  print(st);
}
