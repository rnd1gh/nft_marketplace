import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/models/bottom_bar_button.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  // handle onPress Bottom Bar Button
  void onChangeSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: screens[selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: HexagonWidget.pointy(
          width: 50.0,
          color: Colors.white.withOpacity(0.8),
          elevation: 8,
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        child: Glassmorphism(
          blur: 20.0,
          opacity: 0.2,
          radius: 0,
          child: SizedBox(
            height: KHeightBottomBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(0);
                  },
                  iconData: bottomBarButtons[0],
                  index: 0,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(1);
                  },
                  iconData: bottomBarButtons[1],
                  index: 1,
                  currenSelectedIndex: selectedIndex,
                ),
                const SizedBox(
                  width: kDefaultFatPadding,
                ),
                BottomBarButton(
                  onPress: () {},
                  iconData: bottomBarButtons[2],
                  index: 2,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {},
                  iconData: bottomBarButtons[3],
                  index: 3,
                  currenSelectedIndex: selectedIndex,
                ),
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
