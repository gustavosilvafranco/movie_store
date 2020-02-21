import 'package:flutter/material.dart';
import 'package:movie_store/models/filteredMovieList.dart';
import 'package:movie_store/models/movie.dart';
import 'package:provider/provider.dart';

class CategoryChoiceMenu extends StatefulWidget {
  @override
  _CategoryChoiceMenuState createState() => _CategoryChoiceMenuState();
}

class _CategoryChoiceMenuState extends State<CategoryChoiceMenu> {
  int _selectedChoiceChip;

  @override
  Widget build(BuildContext context) {
    var filteredMovieList = Provider.of<FilteredMovieList>(context);

    return Wrap(
        direction: Axis.horizontal,
        children: List<Widget>.generate(
          movieGenre.values.length,
          (int index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              child: ChoiceChip(
                selectedColor: Colors.red,
                selectedShadowColor: Colors.black,
                label: Text(translateGenreEnum(movieGenre.values[index]),
                    style: TextStyle(
                        color: (_selectedChoiceChip == index
                            ? Colors.white
                            : Colors.black))),
                selected: _selectedChoiceChip == index,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoiceChip = selected ? index : null;
                    filteredMovieList.filterList(_selectedChoiceChip);
                  });
                },
              ),
            );
          },
        ).toList());
  }
}
