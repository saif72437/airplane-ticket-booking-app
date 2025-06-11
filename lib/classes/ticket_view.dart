import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pia_app/classes/utils/app_layout.dart';
import 'package:pia_app/classes/utils/app_styles.dart';
import 'package:pia_app/classes/utils/textStyles.dart';
import 'package:pia_app/widgets/thick_container.dart';

import '../widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(168),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16),),
        child: Column(
          children: [
            // this container is responsible for showing the blue part of the card
            Container(
              decoration:  BoxDecoration(
                  color: isColor== null?Color(0xFF526799):Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style:
                        isColor==null?Styles.headLineStyle2.copyWith(color: whiteColor):Styles.headLineStyle2.copyWith(color: Colors.black87),
                      ),
                      const Spacer(),
                      ThickContainer(isColor:isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(section: 6,),
                            ),
                            Center(child: Transform.rotate(angle: 1.6, child: Icon(Icons.local_airport_rounded,color: isColor==null? whiteColor: Color(0xFF8ACCF7),),)),

                          ],
                        ),
                      ),
                      ThickContainer(isColor:isColor),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style:
                        isColor==null? Styles.headLineStyle2.copyWith(color: whiteColor): Styles.headLineStyle2.copyWith(color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket["from"]["name"], style: isColor==null?Styles.headLineStyle4.copyWith(color: whiteColor):Styles.headLineStyle4,),
                        
                      ),
                      Text(ticket["flying_time"], style: isColor==null? Styles.headLineStyle4.copyWith(color: whiteColor):Styles.headLineStyle4.copyWith(color: Colors.black87),),
                      SizedBox(
                        width: 100,
                        child: Text(ticket["to"]["name"], textAlign: TextAlign.end,style: isColor==null?Styles.headLineStyle4.copyWith(color: whiteColor):Styles.headLineStyle4),

                      ),
                    ],
                  ),
                ],
              ),

            ),
            // showing the orange part of the card
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                children:  [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.white:Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext , BoxConstraints ) {
                     // int i =  (BoxConstraints.constrainWidth()/15.floor()) as int;
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children:List.generate(20, (index) =>  SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor==null? Colors.white: Colors.grey.shade300,
                              ),
                            ),
                          ),)
                      );
                    },

                    ),
                  ),),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.white:Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // bottom part of orange part
            Container(
              decoration:  BoxDecoration(
                color: isColor ==null? Styles.orangeColor: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),

              ),
              padding: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket["date"], style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black87),),
                          SizedBox(height: 5,),
                          Text("Date", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket["departure_time"], style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black)),
                          const SizedBox(height: 5,),
                          Text("Departure time", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(), style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black87),),
                          const SizedBox(height: 5,),
                          Text("Number", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
