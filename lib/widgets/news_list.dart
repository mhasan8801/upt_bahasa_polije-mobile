import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upt_bahasa_polije/pages/detailtest_page.dart';
import 'package:upt_bahasa_polije/theme.dart';

class NewsList extends StatelessWidget {
  final String newsTitle;
  final String dateTitle;
  final String imageUrl;

  NewsList(
      {required this.newsTitle,
      required this.dateTitle,
      required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailTest(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 27,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsTitle,
                  style: newsTitleTextStyle,
                ),
                Text(
                  dateTitle,
                  style: dateNewsTitleTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
