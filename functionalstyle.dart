void main(){
  server(5, cube);
  server(5, evenOdd);
  List<Function> results = giveMeTwoFunction();
  print("CUBE CALL ${results[0](5)}");
}
void server(int n, Function result){
  for(int i = 1; i<=n; i++){
    print(result(i));
  }
}
List<Function> giveMeTwoFunction(){
  return [cube,evenOdd];
}
var cube = (num)=>num*num*num;
var evenOdd = (num)=>num%2==0?"Even $num":"Odd $num";