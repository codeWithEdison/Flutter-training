class Animal{
  void makeSound(){
    print("animal sound");
  }
}

class Dog extends Animal{
  @override
  void makeSound(){
    print("bark!");
  }
}


void main(){
  Dog dog1 = new Dog();
  dog1.makeSound();
}