import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/main_colors.dart';
import 'package:spotify_clone/view/tab/home/home_page.dart';
import 'package:spotify_clone/view/tab/more/more_page.dart';
import 'package:spotify_clone/view/tab/search/search_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<StatefulWidget> createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.black,
        activeColor: MainColors.primaryColor,
        height: 60,
        iconSize: 22.5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
          ),
        ],
      ),

      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 1:
            return CupertinoTabView(
              builder: (context) => const SearchPage(),
            );

          case 2:
            return CupertinoTabView(
              builder: (context) => MorePage(),
            );

          default:
            return CupertinoTabView(
              builder: (context) => const HomePage(),
            );
        }
      },
    );
  }
}