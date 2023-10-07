import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

ValueNotifier<int> navigationindex = ValueNotifier(0);

class WaterBar extends StatelessWidget {
  const WaterBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: navigationindex,
      builder: (BuildContext ctx, int currentindex, Widget? _) {
        return WaterDropNavBar(
          waterDropColor: Colors.blue[800]!,
          bottomPadding: size.height * 0.015,
          iconSize: size.height*0.04,
          onItemSelected: (index) => navigationindex.value = index,
          selectedIndex: currentindex,
          barItems: [
            BarItem(
              filledIcon: Icons.home_rounded,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.pageview_rounded,
                outlinedIcon: Icons.pageview_outlined),
          ],
        );
      },
    );
  }
}
