import 'dart:ui';
import 'package:flutter/material.dart';

class BlurTextScreen extends StatelessWidget {
  const BlurTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blur Text Container'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white.withValues(alpha: 0.4),
                child: const Text(
                  'This Text has a Blurred Background',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
        
        ),
      ),
    );
  }
}
