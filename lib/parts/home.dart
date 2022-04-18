import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Text(
              "DESIGN",
              style: GoogleFonts.pressStart2p(color: Colors.white),
            ),
          ),
          Header(),
        ],
      ),
    );
  }
}
