import 'package:flutter/material.dart';
import 'categories.dart';
import 'generates.dart';

import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
        Generate(),
        MovieCarousel(),
      ],
    );
  }
}
