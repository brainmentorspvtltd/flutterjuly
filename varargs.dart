void main(){
  print(add([]));
  print(add([10,20]));
  print(add([10,20,30,40]));
}

int add(List<int> list){
  int sum = 0;
  for(int i = 0; i<list.length; i++){
    sum+=list[i];
  }
  return sum;
}