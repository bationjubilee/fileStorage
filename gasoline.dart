import 'dart:io';


void main() {
  Map<String, double> gasoline_fuel = {
    'leaded': 45.75,
    'unleaded': 43.18,
    'diesel': 37.12,
    'biodiesel': 48.03
  };
  
  print(gasoline_fuel);
  print('Select Type of Fuel: ');
  String gasoline_type = stdin.readLineSync();
  var gasoline_price = gasoline[gasoline_type];
  print('price: $gasoline_price');

 
  var choice_purch = ['cash', 'liter'];
  print('enter type of purchase $choice_purch');
  String type_purch = stdin.readLineSync();
  int liters_loaded = 0;
  
  if (type_purch == 'cash') {
    print('enter amount');
    double amount = double.parse(stdin.readLineSync());
    while (amount >= gasoline_price) {
      amount = amount - gasoline_price;
      liters_loaded += 1;
    }
    print('number of liters:$liters_loaded');
    print(amount);
    
  } else if (type_purch == 'liter') {
    int number = 1;
    print('how many liters: ');
    int num_liter = int.parse(stdin.readLineSync());
    for (int add = numb_liter; add >= number; add--) {
      var total = num_liter * gasoline_price;
      number++;
      print('Total payment:$total');
    }
  } else {
    print('wrong input');
  }
}
