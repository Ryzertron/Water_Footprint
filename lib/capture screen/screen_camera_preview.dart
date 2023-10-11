import 'package:byte_brawlers/capture%20screen/qr_overlay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CamPreviewScreen extends StatelessWidget {
  const CamPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size bounds = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: bounds.height * 0.07),
        child: SizedBox(
          width: bounds.width * 0.2,
          height: bounds.width * 0.2,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            onPressed: () {},
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
              size: bounds.width * 0.1,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            IgnorePointer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: bounds.width,
                        height: bounds.height * 0.1,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white30,
                              Colors.white12,
                              Colors.transparent
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: bounds.width,
                        height: bounds.height * 0.1,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [
                              Colors.white30,
                              Colors.white12,
                              Colors.transparent
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: bounds.width * 0.05,
                    left: bounds.width * 0.03,
                    right: bounds.width * 0.03,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: bounds.width * 0.07,
                        ),
                      ),
                      Text(
                        "BlueDrop",
                        style: GoogleFonts.flavors(
                          fontSize: bounds.width * 0.09,
                          color: Colors.blue[800],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.flash_off,
                          color: Colors.white,
                          size: bounds.width * 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: bounds.height * 0.07),
                  child: IgnorePointer(
                    child: Container(
                      width: bounds.width,
                      height: bounds.width,
                      decoration: ShapeDecoration(
                          shape: QrScannerOverlayShape(
                              borderColor: Colors.white,
                              cutOutWidth: bounds.width * 0.7,
                              cutOutHeight: bounds.width * 0.7,
                              borderWidth: 10,
                              borderLength: 50,
                              borderRadius: 20)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
