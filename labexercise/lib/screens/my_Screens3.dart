import 'package:flutter/material.dart';

class MainScreen3 extends StatelessWidget {
  MainScreen3({super.key});
  var start = TextEditingController();
  var end = TextEditingController();
  int starting = 0;
  int ending = 0;
  String show;
  int showMe(int s, int e){
      for(int i = s; i <= e; i++){
        return i;
      }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Midterm Exam", style: TextStyle(fontSize: 25),),
              Row(
                children: [
                  Expanded(child: TextField(
                    controller: start,
                    decoration: InputDecoration(
                      labelText: "Start",
                      border: OutlineInputBorder()
                    ),
                    
                  ),
                  ),
                  SizedBox(width: 165,),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  
                  Expanded(
                    child: TextField(
                      controller: end,
                    decoration: InputDecoration(
                      
                      labelText: "End",
                      border: OutlineInputBorder()
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: (){
                     starting = int.parse(start.text);
                     ending = int.parse(end.text);
                      show = showMe(starting, ending);
                  }, child: Text("Show Numbers"))
                ],
              ),
              Text(),
            ],
          ),
        ),
      ),
    );
  }
}