import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/data/main_colors.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({super.key, required this.title, required this.color1, required this.color2});

  final title;
  final color1, color2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2.25,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color(int.parse('0xff$color1')),
            Color(int.parse('0xff$color2'))
          ]
        )
      ),

      child: Text(
        title,
        style: const TextStyle(
          color: MainColors.starterWhite,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}