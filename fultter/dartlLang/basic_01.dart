main(){
  //화면 출력
  print("Hello World!");

  //변수선언
  String name= "Kim";
  var name1 = "Kim";
  var intNum1 = 1;
  dynamic name2 = "Lee";
  name1 = "Lee";
  name2 = 20;

  //정수
  int int1 = 30;
  int int2 = 20;

  print(int1 / int2);
  print(int1 % int2);
  print(int1 ~/ int2);


  // 문자열
  String str1 = '유비';
  String str2 = '장비';

  print(str1 + " : " + str2);

  //문자열 보간법
  print("$str1 : $str2");  //따옴표안에 가져 올 변수에만 $표시한다.

  print("int1과 int2의 합은 ${int1 + int2} 입니다.");






}