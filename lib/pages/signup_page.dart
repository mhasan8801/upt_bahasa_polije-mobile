import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:upt_bahasa_polije/pages/signin_page.dart';
import 'package:upt_bahasa_polije/provider/auth_provider.dart';
import 'package:upt_bahasa_polije/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _value = 1;
  bool isUploaded = false;
  bool isEmailValid = true;

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController addressController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;

  List<String> data = [
    "SMA/SMK",
    "S1",
    "S2",
    "S3",
  ];

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.register(
        name: nameController.text,
        phone: phoneController.text,
        email: emailController.text,
        address: addressController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Register!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/upload_pic.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/pic_account.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
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
                  'Sign Up',
                  style: titleTextStyle,
                ),
                SizedBox(height: 2),
                Text(
                  'Begin Your Language',
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 40),
                isUploaded ? showedImages() : uploadedImages(),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: nameController,
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
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
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
                SizedBox(height: 20),
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

                SizedBox(height: 20),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Gender',
                //       style: titleTextStyle,
                //     ),
                //     SizedBox(height: 8),
                //     Row(
                //       children: [
                //         Radio(
                //           value: 1,
                //           activeColor: Colors.blue,
                //           groupValue: _value,
                //           onChanged: (value){

                //             setState(() {

                //             });
                //           },
                //           ),
                //           SizedBox(width: 10.0,),
                //           Text("Male"),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         Radio(
                //           value: 2,
                //           activeColor: Colors.blue,
                //           groupValue: _value,
                //           onChanged: (value){
                //             setState(() {

                //             });
                //           },
                //           ),
                //           SizedBox(width: 10.0,),
                //           Text("Female"),
                //       ],
                //     ),
                //   ],
                // ),
                // SizedBox(height: 50),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Place Of Birth',
                //       style: titleTextStyle,
                //     ),
                //     SizedBox(height: 8),
                //     TextFormField(
                //       decoration: InputDecoration(
                //         fillColor: Color(0xffF1F0F5),
                //         filled: true,
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide.none,
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide(color: Color(0xff08AFE6)),
                //         ),
                //         hintText: '',
                //       ),
                //       style: TextStyle(color: Color(0xff272C2F)),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 50),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Date of Birth',
                //       style: titleTextStyle,
                //     ),
                //     SizedBox(height: 8),
                //     TextFormField(
                //       keyboardType: TextInputType.datetime,
                //       decoration: InputDecoration(
                //         fillColor: Color(0xffF1F0F5),
                //         filled: false,
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide.none,
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide(color: Color(0xff08AFE6)),
                //         ),
                //         hintText: '',
                //       ),
                //       style: TextStyle(color: Color(0xff272C2F)),
                //     ),
                //   ],
                // ),

                // SizedBox(height: 50),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Last Education',
                //       style: titleTextStyle,
                //     ),
                //     DropdownButton(
                //       onChanged: (value) {
                //         print(value);
                //       },
                //       items: data
                //           .map((e) => DropdownMenuItem(
                //                 value: e,
                //                 child: Text(e),
                //               ))
                //           .toList(),
                //     ),
                //   ],
                // ),

                // SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: addressController,
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

                SizedBox(height: 20),
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

                // SizedBox(height: 20),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Confirm Password',
                //       style: titleTextStyle,
                //     ),
                //     SizedBox(height: 8),
                //     TextFormField(
                //       obscureText: true,
                //       decoration: InputDecoration(
                //         fillColor: Color(0xffF1F0F5),
                //         filled: true,
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide.none,
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(100),
                //           borderSide: BorderSide(color: Color(0xff08AFE6)),
                //         ),
                //         hintText: '',
                //       ),
                //       style: TextStyle(color: Color(0xff272C2F)),
                //     ),
                //   ],
                // ),

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
                      onPressed: handleSignUp,
                      child: Text(
                        'Sign Up',
                        style: buttonTitleTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPages()),
                        );
                      },
                      child: Text(
                        'Back to Sign In',
                        style: GoogleFonts.poppins(
                          color: Color(0xffB3B5C4),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
