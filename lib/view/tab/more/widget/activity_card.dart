import 'package:flutter/cupertino.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('pressed');
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Icon(
                icon,
                color: CupertinoColors.white,
                size: 30,
              ),
            ),

            const SizedBox(width: 25),

            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Text(
                title,
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),

            const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Icon(
                CupertinoIcons.chevron_forward,
                color: CupertinoColors.white,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}