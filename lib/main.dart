import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upt_bahasa_polije/pages/home_page.dart';
import 'package:upt_bahasa_polije/pages/signin_page.dart';
import 'package:upt_bahasa_polije/pages/signup_page.dart';
import 'package:upt_bahasa_polije/pages/started_page.dart';
import 'package:upt_bahasa_polije/provider/auth_provider.dart';
import 'package:upt_bahasa_polije/provider/news_prodiver.dart';
import 'pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => HomePage(),
          '/sign-in': (context) => SignInPages(),
          '/sign-up': (context) => SignUpPage(),
          '/started-page': (context) => GetStartedPage(),
        },
      ),
    );
  }
}
