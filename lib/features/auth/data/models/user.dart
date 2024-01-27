

class User{
  String name;
  String age;
  String relationship;
  bool isPregnant;
  bool isHaveChildren;
  User({
    required this.name,
    required this.age,
    required this.relationship,
    required this.isHaveChildren,
    required this.isPregnant
  });
  User copyWith(
      String?name,
      String?age,
      String?relationship,
      bool?isPregnant,
      bool?isHaveChildren
      ){
   return User(
     name: name??this.name,
     age: age??this.age,
     relationship: relationship??this.relationship,
     isHaveChildren: isHaveChildren??this.isHaveChildren,
     isPregnant: isPregnant??this.isPregnant,

   ) ;
  }
}