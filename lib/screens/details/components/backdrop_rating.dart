import 'package:flutter/material.dart';
import 'package:flutter_movie/models/movie.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //40$ of total height
          height: size.height * 0.4,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4 - 50,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      50.0,
                    ),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movie.backdrop!),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 100.0,
                  //width over 90% total width
                  width: size.width * 0.9,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        40.0,
                      ),
                      topLeft: Radius.circular(
                        40.0,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 5.0),
                        blurRadius: 60.0,
                        color: Color(0xFF12153D).withOpacity(
                          0.2,
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/star_fill.svg"),
                          SizedBox(
                            height: kDefaultPadding / 4,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "${movie.rating}/",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: "10\n",
                                ),
                                TextSpan(
                                  text: "150,212",
                                  style: TextStyle(
                                    color: kTextLightColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //Rate
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/star.svg"),
                          SizedBox(
                            height: kDefaultPadding / 4,
                          ),
                          Text(
                            "Rate this",
                            style: Theme.of(context).textTheme.bodyText2,
                          )
                        ],
                      ),
                      //Score
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                              6.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                            ),
                            child: Text(
                              "${movie.metascoreRating}",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: kDefaultPadding / 4.0),
                          Text(
                            "Metascore",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "62 critic reviews",
                            style: TextStyle(
                              color: kTextLightColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: BackButton(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
