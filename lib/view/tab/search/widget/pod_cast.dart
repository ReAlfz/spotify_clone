import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';

class Podcast extends StatelessWidget {
  const Podcast({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: podCast.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = podCast[index];

          return Container(
            decoration: BoxDecoration(
              color: MainColors.cardBackground,
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            margin: const EdgeInsets.all(4),
            width: 155,
            height: 195,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 113,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(data['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  data['title'],
                  style: const TextStyle(
                    color: MainColors.starterWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  data['description'],
                  style: const TextStyle(
                    color: MainColors.starterWhite,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}