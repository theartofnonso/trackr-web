import 'package:flutter/material.dart';
import 'package:tracker/header_widget.dart';

import 'animated_images_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLarge = size.width >= 900;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: isLarge
                ?  const SizedBox(
                    width: 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        HeaderWidget(),
                        SizedBox(
                            height: 600, child: AnimatedImagesWidget())
                      ],
                    ),
                  )
                : const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeaderWidget(),
                      SizedBox(
                          height: 600, child: AnimatedImagesWidget()),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
