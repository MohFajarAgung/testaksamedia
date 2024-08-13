import 'package:flutter/material.dart';
import 'info_card.dart';

class Section extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final String desc;
  final VoidCallback onNext;

  const Section({
    Key? key,
    required this.imagePath,
    required this.cardTitle,
    required this.desc,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: InfoCard(
            cardTitle: cardTitle,
            desc: desc,
            onNext: onNext,
          ),
        ),
      ],
    );
  }
}
