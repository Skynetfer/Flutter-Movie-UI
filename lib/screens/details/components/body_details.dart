import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/screens/home/components/generate_card.dart';

import '../../../constants.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'cast_slide.dart';
import 'genres_of_movie.dart';
import 'title_duration.dart';

class BodyDetailsScreen extends StatelessWidget {
  final Movie movie;
  const BodyDetailsScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //provide total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(
            height: kDefaultPadding / 2.0,
          ),
          TitleDuration(movie: movie),
          GenresOfMovie(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2.0,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              movie.plot.toString(),
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast!),
        ],
      ),
    );
  }
}

