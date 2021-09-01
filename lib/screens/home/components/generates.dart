import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'generate_card.dart';

class Generate extends StatelessWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> generates = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation",
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: generates.length,
        itemBuilder: (context, index) => GenerateCard(
          gene: generates[index],
        ),
      ),
    );
  }
}