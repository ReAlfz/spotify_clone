import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';

class ArtistList extends StatelessWidget {
  const ArtistList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 195,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: artists.length,
          itemBuilder: (context, index) {
            final data = artists[index];
            return  Container(
              width: 155,
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: MainColors.cardBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 125,
                    width: 125,
                    child: Image(
                      image: AssetImage(data['image']),
                    ),
                  ),

                  const SizedBox(height: 16),
                  Text(
                    data['name'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: CupertinoColors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}