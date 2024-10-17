import 'package:dice_app_using_provider/Controller/dice_controller.dart';
import 'package:dice_app_using_provider/View/Dice%20screen/dice_screen.dart';
import 'package:dice_app_using_provider/View/Start%20screen/Start_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>DiceController(),
   child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceScreen(),
    ),
   );

   
  }
}
