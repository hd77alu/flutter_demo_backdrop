import 'dart:ui';
import 'package:flutter/material.dart';

class BlurImageScreen extends StatelessWidget {
  const BlurImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blur Image'),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'images/raindrops-1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Blur entire image
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: const Color.fromARGB(139, 187, 16, 16),
            ),
          ),
        ],
      ),
    );
  }
}
