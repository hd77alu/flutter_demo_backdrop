import 'dart:ui';
import 'package:flutter/material.dart';

class InteractiveBlurScreen extends StatefulWidget {
  const InteractiveBlurScreen({super.key});

  @override
  State<InteractiveBlurScreen> createState() => _InteractiveBlurScreenState();
}

class _InteractiveBlurScreenState extends State<InteractiveBlurScreen> {
  double _blurValue = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Blur'),
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
          // Blurred overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: _blurValue, sigmaY: _blurValue),
            child: Container(
              color: Colors.transparent,
            ),
          ),
          // Slider control
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black54,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Blur: ${_blurValue.toStringAsFixed(1)}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Slider(
                    value: _blurValue,
                    min: 0.0,
                    max: 20.0,
                    onChanged: (value) {
                      setState(() {
                        _blurValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
