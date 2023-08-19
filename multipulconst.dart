class person {
  int age = 0;
  String name = "";
  int id = 0;
  person(int id, int age, String name) {
    this.age = age;
    this.id = id;
    this.name = name;
    print("My iD is  $id and My Name is $name  And My Age is $age");
  }
  person.id(int id) {
    this.id = id;
    print("My iD is  $id ");
  }
  person.age(int age) {
    this.age = age;
    print("My iD is  $age ");
  }

  person.IdName(int id, String Name) {
    this.id = id;
    this.name = name;
    print("My iD is  $id and My Name is $name ");
  }
  void printName() {
    print(
        "Updated " + " My iD is  $id and My Name is $name  And My Age is $age");
  }
}

void main() {
  person p1 = new person(11, 25, "Amad");
  person.age(30);
  person.id(12);
  person.IdName(15, "Saad");
  p1.printName();
}
