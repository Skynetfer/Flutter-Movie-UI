import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/screens/details/components/body_details.dart';

class DetailsScreen extends StatelessWidget {
  final Movie? movie;
  const DetailsScreen({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetailsScreen(movie: movie!),
    );
  }
}
