import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'custom_button.dart';

class InfoCard extends StatelessWidget {
  final String cardTitle;
  final String desc;
  final VoidCallback onNext;

  const InfoCard({
    Key? key,
    required this.cardTitle,
    required this.desc,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: cardTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            CustomText(
              text: desc,
              style: TextStyle(fontSize: 12),
            ),
            Spacer(),
            Align(
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Selanjutnya',
                  onPressed: onNext,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
