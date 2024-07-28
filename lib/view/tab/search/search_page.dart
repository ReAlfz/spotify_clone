import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';
import 'package:spotify_clone/view/tab/search/widget/browse_card.dart';
import 'package:spotify_clone/view/tab/search/widget/pod_cast.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, media.viewPadding.top + 10, 16, 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Search',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),

                  GestureDetector(
                    child: const Icon(
                      CupertinoIcons.ellipsis_vertical,
                      color: CupertinoColors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 50,
              child: CupertinoTextField(
                padding: const EdgeInsets.only(left: 10),
                placeholder: 'Search',
                placeholderStyle: const TextStyle(
                  color: MainColors.starterWhite,
                  fontSize: 18,
                ),
                decoration: BoxDecoration(
                  color: MainColors.cardBackground,
                  borderRadius: BorderRadius.circular(8.5),
                ),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    CupertinoIcons.search,
                    size: 22.5,
                    color: MainColors.starterWhite,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: searchList.map((text) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: MainColors.cardBackground,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )).toList(),
              ),
            ),

            const SizedBox(height: 24),

            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'PodCast',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Podcast(),

            const SizedBox(height: 12),

            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Browse all',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                BrowseCard(
                    title: 'Made For You',
                    color1: 'E02FCF',
                    color2: '00C188'
                ),
                BrowseCard(
                    title: 'Charts',
                    color1: '0A3CEC',
                    color2: '4DD4AC'
                ),
                BrowseCard(
                    title: 'Discover',
                    color1: '0A3CEC',
                    color2: 'D9DD01'
                ),
                BrowseCard(
                  title: 'New Release',
                  color1: '0E31AE',
                  color2: 'DD1010'
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}