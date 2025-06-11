import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () => {
            print("tapped"),
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
