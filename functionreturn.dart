void main(){
 // add(10,20);
 /*List<Function> list = Calc();
 print("Add is ${list[0](1,2)}");
 print("Sub is ${list[1](1,2)}");
 */
Map<String, Function> map = Calc();
print("Add is ${map["addition"](1,2)}");
print("Sub is ${map["subtraction"](1,2)}");
}
void Customer(){
  void add(){
    print("Customer Add ");
  }
}
/*
List<Function> Calc(){
int z = 10;
int add(int x, int y){
  return x + y + z;
}
int sub(int x, int y){
  return x - y - z;
}
return [add, sub];
}
*/

Map<String, Function> Calc(){
int z = 10;
int add(int x, int y){
  return x + y + z;
}
int sub(int x, int y){
  return x - y - z;
}
return {"addition":add, "subtraction":sub};
}
/*
class Calc{
  int add(int x, int y){
  return x + y;
}
int sub(int x, int y){
  return x - y;
}
}*/