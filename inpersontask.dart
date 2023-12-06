/*class Laptop {
  double id;
  String name;
  int ram;
  Laptop(this.name, this.id, this.ram);
}*/
class Animal {
  int? id;
  String? name, color;
  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;
  Cat(this.sound) : super(id, name, color);
  
}

void main() {
  /*Laptop pc = Laptop(" HP ", 1177, 16);
  print("name : ${pc.name}");
  print("id : ${pc.id}");
  print("ram : ${pc.ram}");
  */
  Cat cat = Cat("tiger", 1177, "brown", "meow");
}
