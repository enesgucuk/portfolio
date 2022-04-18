import 'package:flutter/material.dart';
import 'package:portfolio/utls/logo_items.dart';

List<LogoItems> logoitem = [
  LogoItems("lib/github.png", () {}),
  LogoItems("lib/twitter.png", () {}),
  LogoItems("lib/link.png", () {}),
  LogoItems("lib/youtube.png", () {}),
  LogoItems("lib/insta.png", () {}),
];

class Botside extends StatelessWidget {
  const Botside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: logoitem
              .map(
                (e) => InkWell(
                  onTap: e.pressed,
                  child: Container(
                    child: Image.asset(
                      e.deneme,
                      height: 50,
                      width: 110,
                      color: Colors.white38,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
        ),
      ),
    );
  }
}
