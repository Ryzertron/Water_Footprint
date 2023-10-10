import 'package:byte_brawlers/Search/screen_search.dart';
import 'package:byte_brawlers/base_elements/screen_base.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const WaterFootprint());
}

class WaterFootprint extends StatelessWidget {
  const WaterFootprint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenBase(),
      routes: {
        'ActiveSearch' :(context) => const ScreenSearch()
      },
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return StretchingOverscrollIndicator(
      axisDirection: details.direction,
      child: child,
    );
  }
}
