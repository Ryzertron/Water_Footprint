import 'package:byte_brawlers/screen_base.dart';
import 'package:flutter/material.dart';

main() {
  runApp(WaterFootprint());
}

class WaterFootprint extends StatelessWidget {
  const WaterFootprint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenBase(),
    );
  }
}
