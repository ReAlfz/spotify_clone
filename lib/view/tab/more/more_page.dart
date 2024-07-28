import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/view/tab/more/widget/activity_card.dart';
import 'package:spotify_clone/view/tab/more/widget/play_list.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<StatefulWidget> createState() => _MorePage();
}

class _MorePage extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, media.viewPadding.top + 10, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Library',
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),

                  const SizedBox(width: 64),

                  GestureDetector(
                    child: const Icon(
                      CupertinoIcons.search,
                      color: CupertinoColors.white,
                    ),

                    onTap: () {},
                  ),

                  GestureDetector(
                    child: const Icon(
                      CupertinoIcons.person,
                      color: CupertinoColors.white,
                    ),

                    onTap: () {},
                  ),
                ],
              ),

              const PlayListCard(),

              const SizedBox(height: 10),

              const Align(
                alignment: Alignment.center,
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Activities',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const ActivityCard(
                title: 'Liked Songs',
                icon: CupertinoIcons.heart_fill,
              ),

              Container(
                height: 0.8,
                color: CupertinoColors.secondaryLabel,
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              ),

              const ActivityCard(
                title: 'Followed Artist',
                icon: CupertinoIcons.person_2_fill,
              ),

              Container(
                height: 0.8,
                color: CupertinoColors.secondaryLabel,
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              ),

              const ActivityCard(
                title: 'Followed PodCast',
                icon: CupertinoIcons.music_mic,
              ),

              Container(
                height: 0.8,
                color: CupertinoColors.secondaryLabel,
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}