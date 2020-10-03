import 'dart:io';
bool checkFibbo(List<int> list){
  for(int i = 2; i < list.length; i++){ 
   if ((list[i - 1] + list[i - 2]) != list[i]){
      return false;
   }      
  }
   return true;
}
void main() {
	print("Fibbonacci Checker\n");
  List<int> list = new List();
  print("Enter size of list(size must be greater than 3 less than 10): ");
  int fibbo_size = int.parse(stdin.readLineSync());
  if(fibbo_size < 3 || fibbo_size > 10){
    print("Invalid size");
  }else{
    for(int i = 0; i < fibbo_size;i++){
      int x = i+1;
      print("Enter number $x: ");
      list.add(int.parse(stdin.readLineSync()));
    }
    print(list);
    print(checkFibbo(list));
  }  
}
