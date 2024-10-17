import 'dart:math';
import 'package:dice_app_using_provider/Controller/dice_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice"),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Shuffle the images
                context.read<DiceController>().shuffleImage();

                // Get a random image from the shuffled list
                ImageProvider newImage = context.read<DiceController>().images[Random().nextInt(6)];

                // Update the current image in the controller
                context.read<DiceController>().updateImage(newImage);
              },
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: context.watch<DiceController>().currentImage),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
