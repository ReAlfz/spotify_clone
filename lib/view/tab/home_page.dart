import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/main_colors.dart';

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
      child: Padding(
        padding: EdgeInsets.only(top: media.viewPadding.top),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
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
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
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

              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}