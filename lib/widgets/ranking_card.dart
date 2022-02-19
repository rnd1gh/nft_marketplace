
import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';

class RankingCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String name;
  final double ether;
  final double percent;
  const RankingCard({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.name,
    required this.ether,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$index',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(
          width: kDefaultExThinPadding,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            imageUrl,
            width: 50.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: kDefaultExThinPadding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            const Spacer(),
            const Text(
              'view info',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '⟠ $ether',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            const Spacer(),
            Text(
              '$percent%',
              style: TextStyle(
                color: percent > 0 ? Colors.green : Colors.red,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
