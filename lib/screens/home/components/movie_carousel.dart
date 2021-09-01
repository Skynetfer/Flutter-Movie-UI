import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';

import '../../../constants.dart';
import 'movie_card.dart';
import 'dart:math' as math;

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      //position show left and right side
      viewportFraction: 0.8,
      //set default movie poster
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlide(index),
        ),
      ),
    );
  }

  // Widget buildMovieSlide(int index) {
  //   return MovieCard(
  //     movie: movies[index],

  //   );
  // }
  Widget buildMovieSlide(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = (index - _pageController.page!);
          //0.038 because 180*0.038 = 7. we need use to rotate poster 7 degree
          //clap to change value vary from - 1 to 1
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          opacity: initialPage == index ? 1 : 0.5,
          duration: Duration(
            milliseconds: 350,
          ),
          child: Transform.rotate(
            angle: math.pi * value,
            child: MovieCard(
              movie: movies[index],
            ),
          ),
        );
      },
    );
  }
}
