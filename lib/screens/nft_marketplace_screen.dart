import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/models/nft_card_widget.dart';
import 'package:nft_marketplace/widgets/theme_card_widget.dart';

class NFTMarketplaceScreen extends StatelessWidget {
  const NFTMarketplaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const Center(
            child: Text(
              'NFT Marketplace',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150.0,
            margin: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultExThinPadding,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: themeCardModels.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: ThemeCardWidget(
                  imageUrl: themeCardModels[index].imageUrl,
                  title: themeCardModels[index].title,
                  onPress: () {},
                ),
              ),
            ),
          ),
          const _TitleWidget(
            title: 'Trending Collections',
          ),
          Container(
            height: 200.0,
            margin: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultExThinPadding,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingCards.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: NFTCardWidget(
                  imageUrl: trendingCards[index].imageUrl,
                  favoriteNumber: trendingCards[index].favoriteNumber,
                  name: trendingCards[index].name,
                  onPress: () {},
                ),
              ),
            ),
          ),
          const _TitleWidget(
            title: 'Top seller',
          ),
          Container(
            height: 200.0,
            margin: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultExThinPadding,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topsellCards.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: NFTCardWidget(
                  imageUrl: topsellCards[index].imageUrl,
                  favoriteNumber: topsellCards[index].favoriteNumber,
                  name: topsellCards[index].name,
                  onPress: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  final String title;
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
