import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AnimatedWave extends StatelessWidget {
  const AnimatedWave({required this.bounds, super.key});
  final Size bounds;
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        colors: [
                        Colors.blue[700]!,
                        Colors.blue[200]!,
                        Colors.blue[600]!,
                        Colors.blue[800]!
                      ],
        durations: [18000, 8000, 5000, 12000],
        heightPercentages: [0.85, 0.86, 0.87, 0.88],
      ),
      size: bounds,
    );
  }
}
