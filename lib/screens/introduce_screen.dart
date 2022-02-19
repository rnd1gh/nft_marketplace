
import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/screens/home_screen.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/Colorful-Abstract-iPhone-Wallpapers-2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    'Welcome to\nNFT Marketplace',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                // Build Widget Glassmorphism
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: Glassmorphism(
                    blur: 15,
                    opacity: 0.2,
                    radius: 20,
                    child: Container(
                      height: 200,
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        children: [
                          const Text(
                            'Explore and Mint NFTs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: kDefaultExThinPadding,
                          ),
                          Text(
                            'You can buy and sell the NFTs of the best artists in the world.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16.0,
                            ),
                          ),
                          const Spacer(),
                          Glassmorphism(
                            blur: 20,
                            opacity: 0.1,
                            radius: 50.0,
                            child: TextButton(
                              onPressed: () {
                                // handle push to HomeScreen
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultExThinPadding,
                                  horizontal: kDefaultPadding,
                                ),
                                child: const Text(
                                  'Get started now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
