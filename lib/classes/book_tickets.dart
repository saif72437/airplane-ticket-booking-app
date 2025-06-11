import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pia_app/classes/looking_for_you.dart';
import 'package:pia_app/classes/utils/app_info_list.dart';
import 'package:pia_app/classes/utils/app_styles.dart';
import 'package:pia_app/classes/ticket_view.dart';
import 'package:pia_app/classes/utils/textStyles.dart';

import '../widgets/double_text_widget.dart';
import 'hotels.dart';

class BookTickets extends StatelessWidget {
  const BookTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg_color,
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),

              // good moring text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: textStyle.textheading1,
                        ),
                        Text('Book Tickets', style: textStyle.textheading4),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: bg_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: AssetImage(
                            'assets/images/img_1.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                        // child: const Image(image: AssetImage('assets/images/img_1.png',), fit: BoxFit.fill,),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              //Search
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
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
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

              const SizedBox(
                height: 40,
              ),

              // upComming Flight text
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: AppDoubleTextWidget(bigText: "Upcomming Flights", smallText: "View all",),
              ),
              const SizedBox(
                height: 15,
              ),

              // ticket view
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all",),
              ),
              const SizedBox(height: 15,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: hotellist.map((singleHotel) => hotelScreen(hotel: singleHotel)).toList()
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
