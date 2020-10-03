import 'dart:io';

//gasoline store

void main() {
  Map<String, double> gasoline = {
    'leaded': 45.75,
    'unleaded': 43.18,
    'diesel': 37.12,
    'biodiesel': 48.03
  };
  
  print(gasoline);
  print('Select Type of Fuel: ');
  String gasoline_type = stdin.readLineSync();
  var gasoline_price = gasoline[gasoline_type];
  print('price: $gasoline_price');

  //type of purchase
  var choice_purch = ['cash', 'liter'];
  print('enter type of purchase $choice_purch');
  String type_purch = stdin.readLineSync();
  int liters_acquired = 0;
  //for cash
  if (type_purch == 'cash') {
    print('enter amount');
    double amount = double.parse(stdin.readLineSync());
    while (amount >= gasoline_price) {
      amount = amount - gasoline_price;
      liters_acquired += 1;
    }
    print('number of liters:$liters_acquired');
    print(amount);
    //by liter purchase
  } else if (type_purch == 'liter') {
    int number = 1;
    print('how many liters: ');
    int numbers_of_liter = int.parse(stdin.readLineSync());
    for (int add = numbers_of_liter; add >= number; add--) {
      var total = numbers_of_liter * gasoline_price;
      number++;
      print('Total payment:$total');
    }
  } else {
    print('wrong input');
  }
}