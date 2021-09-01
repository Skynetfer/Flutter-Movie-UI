import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';

import '../../../constants.dart';
class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title!,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kDefaultPadding / 2.0,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "PG-13",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "2h 32m",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              height: 64,
              width: 64,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.redAccent,
                  onSurface: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
