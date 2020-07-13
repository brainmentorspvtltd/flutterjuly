void main(){
  int a ;
  double r = 90.20;
  print(r.toString().runtimeType);
  bool att = true;
  String name = "Amit";
  List<int> list = [90,100,200,300,888];
  list.add(90909);
  print("Runtime type is ${list.runtimeType}");
  print(list is List);
  print("List is $list");
}