import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/main_colors.dart';
import 'package:spotify_clone/view/tab/home/widget/artist_list.dart';
import 'package:spotify_clone/view/tab/home/widget/top_music_list.dart';
import 'package:spotify_clone/view/tab/home/widget/weekly_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16, media.viewPadding.top + 10, 16, 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello there',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),

                  GestureDetector(
                    child: const Icon(
                      CupertinoIcons.bell,
                      color: CupertinoColors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            const Row(
              children: [
                Icon(
                  CupertinoIcons.bolt_fill,
                  size: 20,
                ),

                SizedBox(width: 5),

                Text(
                  'Weekly',
                  style: TextStyle(
                    color: MainColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                SizedBox(width: 5),

                Text(
                  'Music',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),

            const WeeklyList(),

            const Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Top Mix',
                  style: TextStyle(
                    fontSize: 22,
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            const TopMusicList(),

            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Suggested artist',
                  style: TextStyle(
                    fontSize: 22,
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            const ArtistList(),
          ],
        ),
      ),
    );
  }
}