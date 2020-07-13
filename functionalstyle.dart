void main(){
  loop(5, cube);
  loop(5, evenOdd);
  List<Function> results = giveMeTwoFunction();
  print("CUBE CALL ${results[0](5)}");
}
void loop(int n, Function fn){
  for(int i = 1; i<=n; i++){
    print(fn(i));
  }
}
List<Function> giveMeTwoFunction(){
  return [cube,evenOdd];
}
var cube = (num)=>num*num*num;
var evenOdd = (num)=>num%2==0?"Even $num":"Odd $num";