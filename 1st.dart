void main() {
  String n1 = "Amad ";
  String n2 = 'Irfan ';
  print("names before $n1 $n2");
  String name = concatinte(n1, n2);
  print("Name after $name");
}

String concatinte(n1, n2) {
  String total = n1 + n2;
  return total;
}
