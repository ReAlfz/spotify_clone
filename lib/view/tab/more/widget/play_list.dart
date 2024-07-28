import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: playList.length,
      itemBuilder: (context, index) {
        final data = playList[index];

        return Container(
          decoration: BoxDecoration(
            color: MainColors.cardBackground,
            borderRadius: BorderRadius.circular(10),
          ),

          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  PlayImage(image: data['image_1']),
                  PlayImage(image: data['image_2']),
                  PlayImage(image: data['image_3']),
                  PlayImage(image: data['image_4']),
                ],
              ),

              const SizedBox(height: 4),
              Text(
                data['title'],
                style: const TextStyle(
                  color: MainColors.starterWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class PlayImage extends StatelessWidget {
  const PlayImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}