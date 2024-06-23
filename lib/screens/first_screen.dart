import 'package:evxplorer/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // late AnimationController controller;
  // late Animation animation;

  @override
  void initState() {
    super.initState();

    // controller = AnimationController(
    //   vsync: this,
    //   duration: Duration(seconds: 2),
    // );
    //
    // animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //
    // controller.forward();
    //
    // controller.addListener(() {
    //   setState(() {});
    // });

    // GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => Homepage()));
    //   },
    // );

    // Future.delayed(Duration(seconds: 5), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => Homepage()),
    //   );
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Image(
                    image: AssetImage("images/appLogo.png"),
                  )),
            ),
            Hero(
              tag: 'EV',
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  // color: Color(0xff009E63),
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  displayFullTextOnTap: true,
                  animatedTexts: [
                    TypewriterAnimatedText("EVXplorer",
                        speed: Duration(milliseconds: 100))
                  ],
                  onFinished: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
