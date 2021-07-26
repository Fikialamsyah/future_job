import 'package:flutter/material.dart';

import '../theme.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  JobCard({required this.text, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
              AssetImage(imageUrl))),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, bottom: 15),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text,
            style: whiteTextColor.copyWith(
                fontSize: 18,
                fontWeight: medium
            ),
          ),
        ),
      ),
    );
  }
}
