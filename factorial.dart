import 'dart:io';

void main(){

  stdout.write("Enter Number: ");
  String? factorial = stdin.readLineSync();

  int temp = int.parse(factorial!);

  print("The Factorial is: ${Factorial(temp)}");

}
int Factorial(int n){
  if(n == 1){
    return 1;
  }
  else{
    return n * Factorial(n - 1);
  }
}