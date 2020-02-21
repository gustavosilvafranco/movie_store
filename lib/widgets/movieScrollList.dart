import 'package:flutter/material.dart';
import 'package:movie_store/models/movie.dart';
import 'package:movie_store/screens/movieDetail.dart';

class MovieScrollList extends StatelessWidget {
  final List<Movie> sectionMovies;
  final double imageHeight;
  final double imageWidth;

  MovieScrollList({
    @required this.sectionMovies,
    this.imageHeight = 200.0,
    this.imageWidth = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sectionMovies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return MovieDetail(movie: sectionMovies[index]);
              }));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Hero(
                tag: sectionMovies[index].id,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(sectionMovies[index].poster),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          );
        },
      ),
    );
  }

}
