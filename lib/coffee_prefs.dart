import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int  sugar = 1;


  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;  
    });
    
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),

            for(int i = 0; i < strength; i++) 
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            
            const Expanded(child:  SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
              ),
          ],
        ),
        Row(
          children: [
            const Text('Sugar: '),
            
            for(int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded(child:  SizedBox()),
              FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
              onPressed: increaseSugar,
              child: const Text('+')
              ),
          ],
        ),
    ],);
  }
}