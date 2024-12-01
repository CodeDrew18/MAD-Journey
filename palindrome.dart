import 'dart:io';

void main(){

  String value;

stdout.write("Enter Value: ");
value = stdin.readLineSync()!;
print("The Value ${value} " + Palidrome(value));

}

String Palidrome(String n){
  int left = 0;
  int right = n.length - 1;

  while(left < right){
    if(n[left] != n[right]){
      return "Not Palindrome";
    }
    left++;
    right--;
  }
  return "Palindrome";

}