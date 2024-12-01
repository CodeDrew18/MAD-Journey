import 'dart:io';
void main(){

int num1, num2;
double result;
String op;


stdout.write("Enter First Number: ");
num1 = int.parse(stdin.readLineSync()!);
stdout.write("Enter Operator [+, -, *, /, %] : ");
op = stdin.readLineSync()!;
stdout.write("Enter Second Number: ");
num2 = int.parse(stdin.readLineSync()!);

switch(op){
  case "+":
  result = (num1 + num2).toDouble();
  break;
  case "-":
  result = (num1 - num2).toDouble();
  break;
  case "*":
  result = (num1 * num2).toDouble();
  break;
  case "/":
  result = (num1 / num2).toDouble();
  break;
  case "%":
  result = (num1 % num2).toDouble();
  break;
  default:
  result = double.parse("Error".toString());
}

print("The Result is: ${result}");

}