import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  ServiceCard({required this.imageUrl, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 10,
            bottom: 15,
            right: 10,
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        imageUrl,
      ))),
    );
  }
}
