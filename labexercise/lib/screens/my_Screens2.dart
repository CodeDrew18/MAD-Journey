import 'package:flutter/material.dart';

class MainScreen2 extends StatelessWidget {
   MainScreen2({super.key});

  var _kgController = TextEditingController();
  var _cmController = TextEditingController();
  var res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _kgController,
                decoration: InputDecoration(
                  hintText: "Input Kilogram",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _cmController,
                decoration: InputDecoration(
                  hintText: "Input Centimeter",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                double cm = double.parse(_cmController.text);
                double kg = double.parse(_kgController.text);
                var res = kg / ((cm * cm)/10000); 

                String decimal = res.toStringAsFixed(2);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2(decimal: decimal)));
              }, child: Text("Compute"))
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage2 extends StatelessWidget {
   HomePage2({super.key, required this.decimal});

  var decimal;


  Widget ImageChange(double decimal){
    if(decimal < 18.5){
      return Image.asset("assets/images/sad.jpg", height: 250, width: 250,);
    }else if(decimal >= 18.5 &&  decimal <= 24.9){
      return Image.asset("assets/images/smile.webp", height: 250, width: 250,);
    }else{
      return Image.asset("assets/images/sad.jpg", height: 250, width: 250,) ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Result"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageChange(double.parse(decimal)),
            SizedBox(
              height: 20,
            ),
            Text("$decimal", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
          ],
          
        ),
      
      ),
    );
  }
}