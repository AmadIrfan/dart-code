class person {
  String name = "";
  int ID = 0;
  person({String iname = "amad", int ID = 30}) {
    this.name = iname;
    this.ID = ID;
  }
}

void main(List<String> args) {
  person p1 = person(iname: "Amad", ID: 32);
  print(p1.name);
  print(p1.ID);
}
