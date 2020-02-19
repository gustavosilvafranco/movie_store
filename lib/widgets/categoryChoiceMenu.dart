import 'package:flutter/material.dart';
import 'package:movie_store/models/movie.dart';

class CategoryChoiceMenu extends StatefulWidget {
  @override
  _CategoryChoiceMenuState createState() => _CategoryChoiceMenuState();
}

class _CategoryChoiceMenuState extends State<CategoryChoiceMenu> {
  int _value;

  @override
  Widget build(BuildContext context) {
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
                label: Text(translateGenreEnum(movieGenre.values[index])),
                selected: _value == index,
                onSelected: (bool selected) {
                  setState(() {
                    _value = selected ? index : null;
                  });
                },
              ),
            );
          },
        ).toList());
  }
}
