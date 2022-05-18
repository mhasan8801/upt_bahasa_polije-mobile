import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upt_bahasa_polije/theme.dart';
import 'package:upt_bahasa_polije/widgets/news_list.dart';

class SecondHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/bg_secondhomepage.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250, left: 24),
                    child: Text(
                      'Placement Test',
                      style: servicesTitleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290, left: 24),
                    child: Text(
                      '3 test available',
                      style: servicesSubTitleTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    'Placement test is a test or exam that students need to take before entering an institution or school. Placement test aims to see the level of the students abilities and skills. From the results obtained, students will be put into classes according to their level',
                    style: GoogleFonts.poppins(
                      color: Color(0xff272C2F),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffECEDF1),
                thickness: 1,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Test Available',
                        style: GoogleFonts.poppins(
                          color: Color(0xff272C2F),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          NewsList(
                            newsTitle: 'Placement Test Juli 2022',
                            dateTitle: 'Adriadi Novawan, S.Pd., M.Pd',
                            imageUrl: 'assets/news1.png',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          NewsList(
                            newsTitle: 'Placement Test Juli 2022',
                            dateTitle: 'Adriadi Novawan, S.Pd., M.Pd',
                            imageUrl: 'assets/news1.png',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          NewsList(
                            newsTitle: 'Placement Test Juli 2022',
                            dateTitle: 'Adriadi Novawan, S.Pd., M.Pd',
                            imageUrl: 'assets/news1.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
