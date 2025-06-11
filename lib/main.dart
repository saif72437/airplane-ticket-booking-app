import 'package:flutter/material.dart';
import 'package:pia_app/classes/book_tickets.dart';
import 'package:pia_app/classes/looking_for_you.dart';
import 'package:pia_app/classes/utils/textStyles.dart';

import 'classes/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BottomBar();
    //return BookTickets();
    // return LookingForYou();
  }
}
