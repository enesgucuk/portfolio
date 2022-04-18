import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utls/header_items.dart';

List<HeaderItems> headerItem = [
  HeaderItems(() {}, "Home"),
  HeaderItems(() {}, "About"),
  HeaderItems(() {}, "Blogs"),
];

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: headerItem
          .map((e) => InkWell( onTap: e.onTap, child: Padding(padding: const EdgeInsets.fromLTRB(20, 0, 20, 0), child: Text(e.title,
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
