import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pia_app/classes/ticket_view.dart';
import 'package:pia_app/classes/utils/app_info_list.dart';
import 'package:pia_app/classes/utils/app_layout.dart';
import 'package:pia_app/classes/utils/app_styles.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/tickets_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              SizedBox(
                height: AppLayout.getHeight(40),
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Saifullah Khan",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 364869",
                          secondText: "passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    const AppLayoutBuilderWidget(
                      isColor: false,
                      section: 10,
                      width: 5,
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "364738 28274478",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    const AppLayoutBuilderWidget(
                      isColor: false,
                      section: 10,
                      width: 5,
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3,)
                              ],
                            ),
                            SizedBox(
                              height: AppLayout.getHeight(5),
                            ),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249,99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                        ),

                      ],
                    ),

                  ],
                ),
              ),

              
              //bar code
              Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(AppLayout.getHeight(21)),
                bottomLeft: Radius.circular(AppLayout.getHeight(21))
              )

            ),
            margin: EdgeInsets.only(left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
            padding: EdgeInsets.only(top: AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),

                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'https://github.com/martinovovo',
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,

                ),
              ),
            ),
          ),
              SizedBox(
               height: AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(ticket: ticketList[0], ),
              ),

            ],
          ),

          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
