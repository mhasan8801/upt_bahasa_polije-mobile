import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:upt_bahasa_polije/pages/home_page.dart';
import 'package:upt_bahasa_polije/pages/signup_page.dart';
import 'package:upt_bahasa_polije/provider/auth_provider.dart';
import 'package:upt_bahasa_polije/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignInPages extends StatefulWidget {
  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Login!!!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: titleTextStyle,
                ),
                Text(
                  'Build Your Language',
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/login1.png',
                        width: 262,
                        height: 240,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: isEmailValid
                                ? Color(0xff08AFE6)
                                : Color(0xffFD4F56),
                          ),
                        ),
                        hintText: '',
                      ),
                      style: TextStyle(
                        color: isEmailValid
                            ? Color(0xff272C2F)
                            : Color(0xffFD4F56),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff08AFE6)),
                        ),
                        hintText: '',
                      ),
                      style: TextStyle(color: Color(0xff272C2F)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff08AFE6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          )),
                      onPressed: handleSignIn,
                      child: Text(
                        'Sign In',
                        style: buttonTitleTextStyle,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        'Create New Account',
                        style: GoogleFonts.poppins(
                            color: Color(0xffB3B5C4),
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
