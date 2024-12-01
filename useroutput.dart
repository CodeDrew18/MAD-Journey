import 'dart:io';

void main(){

print("Enter Firstname: ");
String? Firstname = stdin.readLineSync();

print("Enter Lastname: ");
String? Lastname = stdin.readLineSync();

if(Firstname!= null && Lastname != null){
  print("Fullname: ${Firstname + Lastname}");
}else{
  print("Invalid Input");
}
}