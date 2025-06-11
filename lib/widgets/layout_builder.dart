import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/utils/textStyles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;

  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.section, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      builder: (BuildContext , BoxConstraints ) {

        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (BoxConstraints.constrainWidth()/section).floor(),
                (index) => SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor==null ? whiteColor: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
