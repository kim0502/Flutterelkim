main(){
ThreeKingdoms threeKingdoms = ThreeKingdoms();
print(threeKingdoms.name);
 threeKingdoms.sayName();

//---
ThreeKingdoms2 threeKingdoms2 = ThreeKingdoms2("유비", "촉");
threeKingdoms2.saySomething();


}//main

class ThreeKingdoms{
 // Field
 String name = '유비';
 // Constructor

 // Method or Function
 sayName(){
   print("내 이름은 ${this.name} 입니다."); //this는 내 field에 있는 변수값이다.
 }
}
//---

class ThreeKingdoms2{
  //Field
  late String name;  //late는 지금은 data값이 없지만 나중에 줄게 
  String? nation;

  //Constructor
  ThreeKingdoms2(String name, String nation)
  : this.name = name,
    this.nation = nation;

    //Method
    saySomething(){
      print("제 이름은 ${this.name}이고 조국은 ${this.nation} 입니다.");
    }
}