import 'package:flutter/cupertino.dart';

import '../classes/utils/app_layout.dart';
import '../classes/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText, secondText;
  final CrossAxisAlignment alignment;

  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headLineStyle3,),
        SizedBox(height: AppLayout.getHeight(5),),
        Text(secondText, style: Styles.headLineStyle4,),

      ],
    );
  }
}
