import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pia_app/classes/utils/textStyles.dart';

class LookingForYou extends StatelessWidget {
  const LookingForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg_color,
          body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            // what are you looking for
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'What are\nyou looking for?',
                  style: textStyle.textheading5,
                )),
            const SizedBox(
              height: 20,
            ),
            // airline ticket button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0),
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(40),
                            ),
                          ),
                          child: Text(
                            'Airline Tickets',
                            style: textStyle.textheading2,
                          )),
                    ),
                    Expanded(
                      flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                      'Hotels',
                      style: textStyle.textheading2,
                            textAlign: TextAlign.end,

                    ),
                        )),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            // departure
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                // child: Row(
                //   children: [

                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'Departure',
                    hintStyle: textStyle.textheading2,
                    prefixIcon: Icon(
                      Icons.flight,

                      color: textGrey,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                // ],
              ),
            ),

            const SizedBox(height: 10,),

            // arival
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                // child: Row(
                //   children: [

                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    hintText: 'Arival',
                    hintStyle: textStyle.textheading2,
                    prefixIcon: Icon(
                      Icons.flight_land,

                      color: textGrey,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                // ],
              ),
            ),

            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: btnColor,
                  borderRadius: BorderRadius.circular(10),


                ),
            child: Center(child:Text("Find tickets", style: TextStyle(fontSize: 18, color: whiteColor, fontWeight: FontWeight.bold,),)),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // upComming Flight text
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flights',
                    style: textStyle.textheading3,
                  ),
                  InkWell(
                    onTap: () => {
                      print("tapped"),
                    },
                    child: Text(
                      'View all',
                      style: textStyle.textheading1,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
