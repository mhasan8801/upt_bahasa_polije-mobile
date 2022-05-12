import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
