import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';

class WeeklyList extends StatelessWidget {
  const WeeklyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        height: 175,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: slider.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final data = slider[index];
            return Column(
              children: [
                Container(
                  height: 135,
                  width: 240,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemRed,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),

                const SizedBox(height: 8),
                Text(
                  data['title'],
                  style: const TextStyle(
                      color: MainColors.starterWhite,
                      fontSize: 11,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
