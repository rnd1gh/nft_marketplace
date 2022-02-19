import 'package:flutter/material.dart';

class StatsButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPress;
  final IconData iconData;

  const StatsButton({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onPress,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton.icon(
          onPressed: onPress,
          icon: Icon(
            iconData,
            color: Colors.white,
            size: 20.0,
          ),
          label: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        isActive
            ? Container(
                height: 3,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFF996EFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF996EFF),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
