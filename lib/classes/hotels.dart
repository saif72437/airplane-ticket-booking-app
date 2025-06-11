import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pia_app/classes/utils/app_layout.dart';
import 'package:pia_app/classes/utils/app_styles.dart';

class hotelScreen extends StatelessWidget {
 final Map<String, dynamic> hotel;
  const hotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("hotel price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
       margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,

          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              )
            ),
          ),
          const SizedBox(height: 10,),
          Text("${hotel['place']}", style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),
          const SizedBox(height: 5,),

          Text("${hotel['destination']}", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const SizedBox(height: 8,),
          Text("RS: ${hotel['price']}/night", style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),


        ],
      ),
    );
  }
}
