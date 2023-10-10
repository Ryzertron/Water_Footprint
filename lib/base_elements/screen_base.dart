import 'package:byte_brawlers/Home/screen_home.dart';
import 'package:byte_brawlers/Search/search_idle.dart';
import 'package:byte_brawlers/base_elements/bottom_nav_bar.dart';
import 'package:byte_brawlers/base_elements/wave_animation.dart';
import 'package:flutter/material.dart';

class ScreenBase extends StatelessWidget {
  ScreenBase({super.key});
  final _pages = [
    const ScreenHome(),
    const ScreenSearchIdle(),
  ];
  @override
  Widget build(BuildContext context) {
    Size bounds = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const WaterBar(),
      body: SafeArea(
          child: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: navigationindex,
            builder: (BuildContext ctxt, int value, Widget? _) {
              return _pages[value];
            },
          ),
          IgnorePointer(child: AnimatedWave(bounds: bounds))
        ],
      )),
    );
  }
}
