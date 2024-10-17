import 'dart:math';

import 'package:flutter/material.dart';

class DiceController with ChangeNotifier {
  ImageProvider currentImage = AssetImage("assets/images/button.png"); // Default image

     List<ImageProvider> images = [
        AssetImage("assets/images/d1.png"),
        AssetImage("assets/images/d2.png"),
        AssetImage("assets/images/d3.png"),
        AssetImage("assets/images/d4.png"),
        AssetImage("assets/images/d5.png"),
        AssetImage("assets/images/d6.png"),
    ];

    void updateImage(ImageProvider newImage) {
        currentImage = newImage;
        notifyListeners();
    }

    void shuffleImage() {
        images.shuffle(Random());
    }
}
