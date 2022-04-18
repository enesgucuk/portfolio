import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'botside.dart';

class UstKisim extends StatelessWidget {
  const UstKisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            UstCont(),
            Botside(),
          ],
        ),
      ),
    );
  }
}

class UstCont extends StatelessWidget {
  const UstCont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        child: Row(
          children: [Leftside(), Rightside()],
        ),
      ),
    );
  }
}

class Leftside extends StatelessWidget {
  const Leftside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          //color: Color.fromRGBO(254, 44, 20, 100),
          color: Colors.deepOrange.shade300,
          padding: EdgeInsets.only(top: 100, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "ENES",
                  style: GoogleFonts.oswald(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text("GUCUKOGLU",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 60,
                  ),),
              ),
              Spacer(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "// ABOUT ME",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Experience designer and developer",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "remotly from Istanbul.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "I'm a Ul/UX Designer, Webflow expert & products \n creator. I also make digital resources for the community \n and shoot videos about it on Youtube",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ));
  }
}

class Rightside extends StatelessWidget {
  const Rightside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrange.shade400,
          child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "lib/ben.png",
                height: 500,
                width: 500,
              )),
        ));
  }
}



