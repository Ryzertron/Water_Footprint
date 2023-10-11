import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    Size bounds = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(bounds.width * 0.03),
          child: Column(
            children: [
              SizedBox(
                height: bounds.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const _SearchBar(),
                  SizedBox(
                    width: bounds.width * 0.1,
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
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size bounds = MediaQuery.of(context).size;
    return SizedBox(
      width: bounds.width * 0.83,
      height: bounds.height * 0.05,
      child: CupertinoSearchTextField(
        autofocus: true,
          placeholder: 'Search for an item',
          placeholderStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          prefixIcon: Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: bounds.height * 0.03,
          ),
          suffixIcon: const Icon(Icons.clear_rounded, color: Colors.grey),
          backgroundColor: Colors.white,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          borderRadius: BorderRadius.circular(bounds.width * 0.01)),
    );
  }
}



