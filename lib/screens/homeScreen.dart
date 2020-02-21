import 'package:flutter/material.dart';
import 'package:movie_store/models/filteredMovieList.dart';
import 'package:movie_store/models/movie.dart';
import 'package:movie_store/widgets/categoryChoiceMenu.dart';
import 'package:movie_store/widgets/movieScrollList.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('MovieMarket'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30.0,
              ),
              onPressed: () {
                print("Opening shopping cart");
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: ChangeNotifierProvider(
          create: (context) => FilteredMovieList(),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              showTag('Popular Choices'),
              Container(
                padding: EdgeInsets.all(15.0),
                child: MovieScrollList(sectionMovies: popularMoviesList),
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(height: 15.0),
              showTag('Filters'),
              SizedBox(height: 10.0),
              CategoryChoiceMenu(),
              SizedBox(height: 10.0,),
              Consumer<FilteredMovieList>(
                builder: (context, movieList, child) =>
                    MovieScrollList(sectionMovies: movieList.filteredMovieList),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget showTag(String text) {
  return Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ));
}
