import 'package:flutter/material.dart';
import 'package:movies_app/my_theme.dart';
import 'package:movies_app/tabs/browser/browser_tab.dart';
import 'package:movies_app/tabs/home_screen/home_tab.dart';
import 'package:movies_app/tabs/search/search_tab.dart';
import 'package:movies_app/tabs/watchList/watchlist_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemeData.blackColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          index = value;
          setState(() {});
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Home icon.png")),
              label: "Home",
              backgroundColor: MyThemeData.blackColor),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/search-2.png")),
              label: "Search",
              backgroundColor: MyThemeData.blackColor),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Downloads.png")),
              label: "Browser",
              backgroundColor: MyThemeData.blackColor),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/Icon ionic-md-bookmarks.png")),
              label: "WatchList",
              backgroundColor: MyThemeData.blackColor),
        ],
      ),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowserTab(),
    WatchListTab(),
  ];
}
