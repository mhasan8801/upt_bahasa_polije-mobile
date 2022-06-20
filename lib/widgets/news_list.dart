import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upt_bahasa_polije/models/news_model.dart';
import 'package:upt_bahasa_polije/pages/detailtest_page.dart';
import 'package:upt_bahasa_polije/theme.dart';

class NewsList extends StatelessWidget {
  final NewsModel newz;
  NewsList(this.newz);

  late String newsTitle;
  late String authorNews;
  late String imageUrl;

  // NewsList(
  //     {required this.newsTitle,
  //     required this.authorNews,
  //     required this.imageUrl});
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
            newz.picture.toString(),
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
                  newz.headline_news.toString(),
                  style: newsTitleTextStyle,
                ),
                Text(
                  newz.author.toString(),
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
