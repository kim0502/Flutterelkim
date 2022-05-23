//Sync 동기처리
//Async 비동기처리


main(){
 checkVersion();
 print('End process');
 }

 Future checkVersion() async{
   var version =await lookupVersion(); //나랑같이 실행되는얘가 끝날때까지 기다리다가 같이 찍어낸다.세트로 작성하기
   print(version);
 }

 int lookupVersion(){
   return 12;
   }