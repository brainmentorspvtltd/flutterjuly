class Emp{
  int _id;
  String _name;
  double _salary;
  // double bonus;

  // String city;
  // String phone;
  // String pincode;

  // Emp(){
  //   print("I am Default Cons");
  // }
  /*Emp(int id, String name, double salary){
    this.id = id;
    this.name = name;
    this.salary = salary;
  }*/
  Emp(this._id, this._name , this._salary);
  Emp.basicInfo(this._id, this._name);

  void set name(String _name){
    this._name = _name;
  }
  String get name{
    return this._name;
  }
  void set salary(double _salary){
    if(_salary>0){
    this._salary = _salary;
    }
    else{
      print("Invalid Salary");
    }
  }
  double get salary{
    return this._salary;
  }

  @override
  String toString(){
    return "Id is $_id Name is $_name and Salary is $_salary";
  }
  /*void display(){
    print("Id is $id Name is $name and Salary is $salary");
  }*/
 /*Emp(int id, String name, double salary){
    this.id = id;
    this.name = name;
    this.salary = salary;
  }*/
}
void main(){
  Emp ram = new Emp(1001,"Ram",999);
  //Emp ram = Emp.basicInfo(1001, "Ram");
  ram.name = "Ram Kumar";
  ram.salary = -9000;
  print(ram._id);
  print(ram._salary);
  //ram.display();
  //print(ram.runtimeType);
  //print(ram.runtimeType.runtimeType);
  print(ram); // ram.toString()
  print(ram.toString());
  //Emp ram =  Emp(1001, "Ram",9000);
}