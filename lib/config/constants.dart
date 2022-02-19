import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/nft_card_model.dart';
import 'package:nft_marketplace/models/ranking_card_model.dart';
import 'package:nft_marketplace/models/theme_card_model.dart';
import 'package:nft_marketplace/screens/nft_marketplace_screen.dart';
import 'package:nft_marketplace/screens/stats_screen.dart';

const double kWidthSideMenu = 100.0;
const double kHeightAppBar = 100.0;
const double KHeightBottomBar = 60.0;

// screens
const screens = [
  NFTMarketplaceScreen(),
  StatsScreen()
];

// Color
const Color primaryColor = Color(0xFF996EFF);
const Color backgroundColor =  Color(0xff211134);

// Padding
const double kDefaultExThinPadding = 8.0;
const double kDefaultThinPadding = 12.0;
const double kDefaultPadding = 16.0;
const double kDefaultWidePadding = 24.0;
const double kDefaultFatPadding = 40.0;

const bottomBarButtons = [
  Icons.home_outlined,
  Icons.stacked_bar_chart_outlined,
  Icons.search_outlined,
  Icons.person_outline_outlined,
];

final themeCardModels = [
  ThemeCardModel(
    imageUrl: "assets/polina-kondrashova-fhrWAh2HMnM-unsplash.jpg",
    title: "Art",
  ),
  ThemeCardModel(
    imageUrl: "assets/alexander-shatov-JlO3-oY5ZlQ-unsplash.jpg",
    title: "Music",
  ),
  ThemeCardModel(
    imageUrl: "assets/yalamber-limbu-DS2ZIDNxWgk-unsplash.jpg",
    title: "Fashion",
  ),
];

final trendingCards = [
  NFTCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    favoriteNumber: 1000,
  ),
  NFTCardModel(
    name: 'Mokey Art',
    imageUrl: 'assets/nft.jpg',
    favoriteNumber: 700,
  ),
  NFTCardModel(
    name: '3D Art',
    imageUrl: 'assets/nft2.jpg',
    favoriteNumber: 900,
  ),
  NFTCardModel(
    name: 'Joker Art',
    imageUrl: 'assets/nft3.jpg',
    favoriteNumber: 200,
  ),
];
final topsellCards = [
  NFTCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_1.jpg',
    favoriteNumber: 1000,
  ),
  NFTCardModel(
    name: 'Mokey Art',
    imageUrl: 'assets/nft_sell_2.jpg',
    favoriteNumber: 700,
  ),
  NFTCardModel(
    name: '3D Art',
    imageUrl: 'assets/nft_sell_3.jpg',
    favoriteNumber: 900,
  ),
  NFTCardModel(
    name: 'Joker Art',
    imageUrl: 'assets/nft_sell_4.jpg',
    favoriteNumber: 200,
  ),
  NFTCardModel(
    name: 'Joker Art',
    imageUrl: 'assets/nft_sell_5.jpg',
    favoriteNumber: 200,
  ),
];

final rankingCards = [
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_1.jpg',
    ether: 3331.1,
    percent: 38.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    ether: 1111.1,
    percent: 44.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_3.jpg',
    ether: 2351.1,
    percent: 21.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_4.jpg',
    ether: 765563.1,
    percent: -28.9,
  ),
  RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_5.jpg',
    ether: 22341.1,
    percent: -8.9,
  ),
   RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft_sell_2.jpg',
    ether: 22341.1,
    percent: -3.9,
  ),
   RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft.jpg',
    ether: 22341.1,
    percent: 77.9,
  ),
   RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft2.jpg',
    ether: 22341.1,
    percent: 1.9,
  ),
   RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/nft3.jpg',
    ether: 22341.1,
    percent: -2.9,
  ),
   RankingCardModel(
    name: 'Famous Person',
    imageUrl: 'assets/yalamber-limbu-DS2ZIDNxWgk-unsplash.jpg',
    ether: 22341.1,
    percent: 18.9,
  ),
];
