// you can run it on https://dartpad.dev/
// to learn more, go to https://dart.dev/guides
void main() { // void does'nt return
  
  // variables
  //   int age = 30;
  //   print(age);
  //   String name = 'chun-li';
  //   name = 'ken';
  //   print(name);
  //   bool isNight = false;
  //   print(isNight);
  
  // dynamic type (avoid it)
  //   dynamic name = 'chun-li';
  //   name = 30;
  //   print(name);
  
  // functions
  //   String greet = greeting();
  //   print(greet);
  //   int age = getAge();
  //   print(age);
  
  // list
  //   List names = ['chun-li', 'yoshi', 'mario'];
  
  // typed list
  //   List<String> names = ['chun-li', 'yoshi', 'mario'];
  //   names.add('luigi');
  //   names.remove('yoshi');
  //   print(names); // [chun-li, mario, luigi]
  
  // instance
  User userOne = User('luigi', 25);
  print(userOne.username); // luigi
  userOne.login();
  User userTwo = User('mario', 30);
  print(userTwo.username); // mario
  SuperUser userThree = SuperUser('yoshi', 20);
  print(userThree.username); // yoshi
  userThree.publish();
  userThree.login();
}


String greeting() {
  return 'hello';
}

// arrow function
int getAge() => 30;

// class
class User {
  String username;
  int age;
  
  // constructor
  // https://dart-lang.github.io/linter/lints/prefer_initializing_formals.html
  User(this.username, this.age); 
  
  void login() {
    print('user logged in');
  }
}

// inheritance
class SuperUser extends User {
  // call the constructor to set username and age
  SuperUser(String username, int age) : super(username, age);
  
  void publish() {
    print('published update');
  }
}