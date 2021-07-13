import 'package:flutter/material.dart';
import 'package:flutter_application_6/utils/contants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget {
  String selected;
  IconData iconData;

  IconWidget({Key? key, required this.selected, required this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 50,
          color: Colors.black54,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          selected,
          style: style,
        )
      ],
    );
  }
}
