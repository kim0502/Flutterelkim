main(){
 List threeKingdoms =[];
  //data추가하기
  threeKingdoms.add("위");
  threeKingdoms.add("촉");
  threeKingdoms.add("로");

 print(threeKingdoms);
 print(threeKingdoms[0]);

 //수정하기
 threeKingdoms[0] = "We";
 print(threeKingdoms);

 //삭제하기
 threeKingdoms.removeAt(1);
 print(threeKingdoms);

 threeKingdoms.remove('We');
 print(threeKingdoms);

 //갯수 확인하는 법
 print(threeKingdoms.length);

 threeKingdoms.add(1); //generic을 안주어서 다씀
 print(threeKingdoms);

 List<String>threeKingdoms2 =[]; //add는 오직 문자만 가능

 //----

 //Map : Key와 Value로 이루어진 Collection
 Map fruits ={
   'apple' : '사과',
   'grape' : '포도',
   'watermelon' : '수박',

 };

 //수정하기
 print(fruits['apple']);
 fruits['watermelon'] = '시원한 수박';

//추가하기
 fruits['banana'] ='바나나';
 print(fruits);

Map<String,int> fruitsPrice = {
  'apple' : 1000,
  'grape' : 2000,
  'watermelon' : 3000,
};

 print(fruitsPrice['apple']);
 int applePrice = fruitsPrice['apple']!; //int?는 null이 들어갈수 있는변수라는 의미 그래서 !추가

int numA = 10;
int? numB = 100;  //null값이 들어가는 변수야
numB = null;



}