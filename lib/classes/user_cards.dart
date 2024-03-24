import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'June 23th',
              style: GoogleFonts.blinker(
                textStyle: const TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/editReminderPage');
                  // ignore: avoid_print
                  print('deu certo');
                },
                child: Container(
                  height: 145.0,
                  width: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, left: 20.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              backgroundImage:
                                  AssetImage('lib/assets/images/avatar1.jpeg'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25.0, left: 30.0),
                            child: Text(
                              'John',
                              style: GoogleFonts.blinker(
                                textStyle: const TextStyle(
                                  height: 0.8,
                                  fontSize: 30.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 30.0,
                            ),
                            child: Text(
                              '27 Aug, 1990',
                              style: GoogleFonts.blinker(
                                textStyle: const TextStyle(
                                  height: 0.5,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 30.0,
                            ),
                            child: Text(
                              'Ready to send at 9 am.',
                              style: GoogleFonts.blinker(
                                textStyle: const TextStyle(
                                  height: 0.7,
                                  fontSize: 15.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
