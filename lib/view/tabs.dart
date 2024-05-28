import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/view/tab/home_page.dart';
import 'package:spotify_clone/view/tab/more_page.dart';
import 'package:spotify_clone/view/tab/search_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<StatefulWidget> createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
  int index = 0;

  final List _screen = [
    HomePage(),
    SearchPage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return CupertinoPageScaffold(
      child: Container(
        height: media.size.height,
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomCenter,
          children: [
            _screen[index],

            Container(
              height: media.size.height * 0.075,
              color: CupertinoColors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: SizedBox(
                      child: Icon(
                        (index == 0) ? CupertinoIcons.house_fill : CupertinoIcons.house,
                        size: 20,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: SizedBox(
                      child: Icon(
                        (index == 1) ? CupertinoIcons.search_circle_fill : CupertinoIcons.search_circle,
                        size: 25,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: SizedBox(
                      child: Icon(
                        (index == 2) ? CupertinoIcons.ellipsis_circle_fill : CupertinoIcons.ellipsis_circle,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}