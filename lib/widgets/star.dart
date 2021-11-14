import '/shared/theme.dart';
import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final int rating;

  StarWidget({this.rating = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 10,
          color: rating >= 1 ? kYellowColor : kLightGrey,
        ),
        Icon(
          Icons.star,
          size: 10,
          color: rating >= 2 ? kYellowColor : kLightGrey,
        ),
        Icon(
          Icons.star,
          size: 10,
          color: rating >= 3 ? kYellowColor : kLightGrey,
        ),
        Icon(
          Icons.star,
          size: 10,
          color: rating >= 4 ? kYellowColor : kLightGrey,
        ),
        Icon(
          Icons.star,
          size: 10,
          color: rating >= 5 ? kYellowColor : kLightGrey,
        ),
      ],
    );
  }
}
