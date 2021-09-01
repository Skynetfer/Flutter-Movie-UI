import 'package:flutter/material.dart';

import '../../../constants.dart';
class CastSlide extends StatelessWidget {
  final Map? cast;
  const CastSlide({Key? key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast!['image'],
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2.0,
          ),
          Text(
            cast!["orginalName"],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(
            height: kDefaultPadding / 4.0,
          ),
          Text(
            cast!["movieName"],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
