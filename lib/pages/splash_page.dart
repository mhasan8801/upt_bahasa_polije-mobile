import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upt_bahasa_polije/pages/onboarding_page.dart';
import 'package:upt_bahasa_polije/pages/started_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GetStartedPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08AFE6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/logo_polije.png',
                  height: 150, width: 150),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'UPT BAHASA',
              style: GoogleFonts.poppins(
                color: Color(0xffffffff),
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'POLITEKNIK NEGERI JEMBER',
              style: GoogleFonts.poppins(
                color: Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
