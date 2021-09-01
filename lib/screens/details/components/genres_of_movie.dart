import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_movie/screens/home/components/generate_card.dart';

import '../../../constants.dart';
class GenresOfMovie extends StatelessWidget {
  const GenresOfMovie({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2.0,
      ),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra!.length,
          itemBuilder: (context, index) =>
              GenerateCard(gene: movie.genra![index]),
        ),
      ),
    );
  }
}
