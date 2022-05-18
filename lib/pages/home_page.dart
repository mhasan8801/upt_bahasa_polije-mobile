import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upt_bahasa_polije/theme.dart';
import 'package:upt_bahasa_polije/widgets/service_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: titleTextStyle,
                  ),
                  Text(
                    'M. Hasan',
                    style: subTitleTextStyle,
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/pic_account.png',
                width: 58,
                height: 58,
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Services',
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ServiceCard(
                        imageUrl: 'assets/card1.png',
                        text: 'Course \nTest',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ServiceCard(
                        imageUrl: 'assets/card2.png',
                        text: 'Placement Test',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ServiceCard(
                        imageUrl: 'assets/card3.png',
                        text: 'English Proficiency',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
