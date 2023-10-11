import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSearchIdle extends StatelessWidget {
  const ScreenSearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    Size bounds = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(bounds.width * 0.03),
        child: Column(
          children: [
            SizedBox(
              height: bounds.height * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Search',
                  style: GoogleFonts.lato(
                    fontSize: bounds.height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: bounds.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 9,
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed('ActiveSearch'),
                    child: NoFunctionSearchBar(
                      bounds: bounds,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => Navigator.of(context).pushNamed('CameraScreen'),
                    icon: Icon(
                      size: bounds.height * 0.05,
                      Icons.lens_blur,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: bounds.height * 0.4,
                width: bounds.height * 0.4,
                child: Transform.flip(
                  flipX: true,
                  child: Icon(
                    Icons.timelapse,
                    size: bounds.height * 0.3,
                    color: Colors.grey[850],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextSuggestor extends StatelessWidget {
  const TextSuggestor({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Bottle',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Paperback Book',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Glass Blender Jar',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Plastic Colander',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Ceramic Coasters',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Wine Decanter',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
        TyperAnimatedText(
          speed: const Duration(milliseconds: 120),
          'Ceramic Trivet',
          textStyle: GoogleFonts.arvo(
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        )
      ],
    );
  }
}

class NoFunctionSearchBar extends StatelessWidget {
  const NoFunctionSearchBar({super.key, required this.bounds});
  final Size bounds;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bounds.height * 0.01),
        color: Colors.white,
      ),
      width: bounds.width * 0.80,
      height: bounds.height * 0.05,
      child: Padding(
        padding: EdgeInsets.all(bounds.width * 0.01),
        child: Row(
          children: [
            Icon(
              size: bounds.height * 0.03,
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: bounds.width * 0.01,
            ),
            const TextSuggestor(),
          ],
        ),
      ),
    );
  }
}
