void main(){
 // int c = add(1000);
 int c = add2(z:9999,x:8);
  print("C is $c");
  var d = addition(90.20,77.30);
  print("D is $d");
  var f = fn(10,20);
  print("F is $f");
}

// Optional Named Parameter
int add2({int x=0, int y=0, int z =0}){
  return x + y + z;
}

// Optional Positional Parameter
int add([int x=0, int y=0]){
  return x + y;
}

addition(x,y){
  return x + y;
}

var fn = (a,b)=>a*b;
