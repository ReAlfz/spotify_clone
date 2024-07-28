import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/data/main_colors.dart';

class TopMusicList extends StatelessWidget {
  const TopMusicList({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: topMixes.length,
          itemBuilder: (context, index) {
            final data = topMixes[index];

            return GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                margin: const EdgeInsets.all(4),
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                  color: MainColors.cardBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
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

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 10,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(int.parse('0xff${data['color']}'))
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            height: 8,
                            decoration: BoxDecoration(
                              color: Color(int.parse('0xff${data['color']}')),
                              borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(15)
                              )
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),
                    Text(
                      data['title'],
                      style: const TextStyle(
                        color: MainColors.starterWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 2),
                    Text(
                      data['description'],
                      style: const TextStyle(
                        color: MainColors.starterWhite,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}