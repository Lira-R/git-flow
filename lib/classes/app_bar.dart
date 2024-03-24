import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 35.0,
          right: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoSizeText(
              'birthday',
              style: GoogleFonts.cabinSketch(
                textStyle: const TextStyle(
                  height: 0.5,
                  fontSize: 62.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              maxLines: 1,
            ),
            AutoSizeText(
              'MESSENGER',
              style: GoogleFonts.bungeeOutline(
                textStyle: TextStyle(
                  height: 1.1,
                  fontSize: 47.0,
                  color: Colors.blue[800],
                ),
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
