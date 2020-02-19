import 'package:flutter/material.dart';
import 'package:movie_store/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;

  MovieDetail({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Buy Movie'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 40.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            heightFactor: 1.1,
            child: Hero(
              tag: movie.title,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(image: AssetImage(movie.poster))),
            ),
          ),
          Container(
              height: 270.0,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: SingleChildScrollView(
                              child: Column(
                  children: <Widget>[
                    Text(movie.title, style: TextStyle(fontSize: 30.0)),
                    Text(movie.categoryString),
                    Text(movie.launchYear.toString()),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(movie.synopsis),
                  ],
                ),
              ),
            ),
          Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
            child: ButtonTheme(
              height: 80.0,
              buttonColor: Colors.red,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {},
                child: Text(
                  "Add to cart (U\$${movie.priceDollar})",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
