import 'package:evxplorer/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/1-2.png"),
              alignment: Alignment.topCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 170, right: 120, left: 120, bottom: 90),
            child: Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/eicon.png"))),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Hero(
                  tag: "appIcon",
                  child: Image(
                    image: AssetImage("images/appLogo.png"),
                    // height: 10,
                    // width: 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: TextField(
                      onChanged: (text) {
                        // email = text;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color(0xff009E63),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '   Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 15),
                    child: TextField(
                      obscureText: true,
                      onChanged: (text) {
                        // password = text;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color(0xff009E63),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: '   Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Color(0xff009E63)),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                          // var result = await log_in(email, password);
                          // if (result[0] == 'success') {
                          //   print('login done');
                          //   Navigator.pushNamed(context, "main",
                          //       arguments: User(email, password));
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(
                          //       content: Text(
                          //           'Authentication failed. Please check your credentials.'),
                          //       backgroundColor: Colors.red,
                          //     ),
                          //   );
                          // }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff009E63)),
                        ),
                        child: SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Center(
                                child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?"),
                      TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SignUp()));
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(color: Color(0xff009E63)),
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
