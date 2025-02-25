import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
    
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sandbox'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          height: 100,
          color: Colors.blue,
          child: Text('Blue'),
        ),
         Container(
          height: 200,
          color: Colors.red,
          child: Text('red'),
        ),
         Container(
          height: 300,
          color: Colors.green,
          child: Text('green'),
        ),
        
      ],)
    );
  }
}


