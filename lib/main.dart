import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/parts/ust_kisim.dart';
import 'package:portfolio/parts/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        body: Stack(
          children: [
            UstKisim(),
            Home(),
            Container(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset:
                              Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      foregroundColor: Colors.deepOrange,
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Transform.rotate(
                          angle: 75,
                          child: Text(
                            "HIRE\n ME",
                            style: GoogleFonts.oswald(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          )),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
