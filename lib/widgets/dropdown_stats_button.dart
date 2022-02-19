import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';

class DropdownStatsButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  const DropdownStatsButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Glassmorphism(
        blur: 20.0,
        opacity: 0.2,
        radius: 40.0,
        child: Container(
          height: 50.0,
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultExThinPadding,
          ),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 20.0,
                color: Colors.white.withOpacity(0.8),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20.0,
                color: Colors.white.withOpacity(0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
