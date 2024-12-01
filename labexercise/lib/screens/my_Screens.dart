import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(anythingColor: Colors.red)));
          }, child: Text("Red")),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(anythingColor: Colors.green)));}, child: Text("Green")),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(anythingColor: Colors.blue)));}, child: Text("Blue")),

          SizedBox(
            height: 20,
          ),

         
        ],
      ),
    );
  }
}
class Homepage extends StatelessWidget {
   Homepage({super.key, required this.anythingColor});

  var anythingColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anythingColor,
      ),
    );
  }
}