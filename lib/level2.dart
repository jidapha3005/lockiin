import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_251267/level3.dart';

class Level2 extends StatelessWidget {
  final int counter;
  final Function updateCounter;

  const Level2({super.key,
              required this.counter, 
              required this.updateCounter});

  @override
  Widget build(BuildContext context) {
    int randCounter = Random().nextInt(8)+1;
    return SizedBox(
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 5, 5, 5),
              foregroundColor: const Color.fromARGB(255, 230, 132, 6),
              padding: const EdgeInsetsDirectional.symmetric(horizontal:20,vertical: 12 ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            onPressed: (){
              updateCounter(randCounter);
            },
           child: const Text(' Set ')
           ),
           const SizedBox(height: 60,),
           Level3(counter: counter, updateCounter: updateCounter)
        ],
      ),
    );
    

  }
}