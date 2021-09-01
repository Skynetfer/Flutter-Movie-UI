import 'package:flutter/material.dart';

import '../../../constants.dart';

class GenerateCard extends StatelessWidget {
  final String? gene;
  const GenerateCard({Key? key, this.gene}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Text(
        gene!,
        style: TextStyle(
          color: kTextColor.withOpacity(
            0.8,
          ),
          fontSize: 16.0,
        ),
      ),
    );
  }
}
