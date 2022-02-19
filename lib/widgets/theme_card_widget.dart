
import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onPress;
  const ThemeCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
              width: 250.0,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 50,
                width: 250.0,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0),
                      ),
                      child: Center(
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
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
