import 'package:flutter/material.dart';
import 'package:upt_bahasa_polije/theme.dart';

class DetailTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                'assets/news1.png',
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Placement Test July 2022',
              style: testTitleTextStyle,
            ),
            Text(
              'Adriadi Novawan, S.Pd., M.Pd',
              style: subTestTitleTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About the test',
                    style: nbTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Offline site in Politeknik Negeri Jember',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Implementation End of July 2022',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qualifications',
                        style: nbTitle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/dot.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Candidate must possess at least a English Passive.',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/dot.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Able to use Computer, internet and Microsoft Office.',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/dot.png',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Participants have previously registered at the link.',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Other information',
                            style: nbTitle,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 12,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Participants arrive on time without being late.',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/dot.png',
                                    width: 12,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Participants are willing to take the entire series of tests.',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: Container(
                                width: 200,
                                height: 45,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(66),
                                    ),
                                    backgroundColor: Color(0xff08AFE6),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Apply for Test',
                                    style: buttonTitleTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
