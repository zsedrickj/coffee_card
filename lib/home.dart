import 'package:coffee_card/coffee_prefs.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee', style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.brown,
        centerTitle: true,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: const Text('How i like my coffee...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: EdgeInsets.all(20),
            child: const CoffeePrefs(), // Coffee prefs Method
          ),
          Expanded(child: Image.asset('assets/img/coffee_bg.jpg', 
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          )
          ),
        ],
      ),
    );
   
  }
}