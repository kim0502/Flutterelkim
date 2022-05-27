main(){
  //final과 const 차이점
  final String name1 = '유비';
  //name1 = '조조';
  const String name2 = '관우';
  //name2 = '조조';

  final DateTime now1 = DateTime.now();
  print(now1);
  //const DateTime now2 = DateTime.now(); // 이렇게 쓸 수 없다.
}