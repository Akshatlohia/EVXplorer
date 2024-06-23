import 'package:flutter/material.dart';
import 'screens/city_form.dart';
import 'screens/highway_form.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Hero(
          tag: 'EV',
          child: Text(
            "EVXplorer",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              // color: Color(0xff009E63),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/4-4.png"),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Container(
            //     child: Image(
            //   color: Color.fromRGBO(0, 0, 0, 0),
            //   // image: AssetImage("images/4-2.jpeg"),
            //   fit: BoxFit.fill,
            // )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                right: 1,
                left: 1,
              ),
              child: Container(
                // height: 275,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 40, bottom: 40, left: 30, right: 15),
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CityFormScreen()));
                              },
                              child: Image(
                                image: AssetImage("images/uicon.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Urban City Areas",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 40, bottom: 40, left: 15, right: 30),
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HighwayFormScreen()));
                              },
                              child: Image(
                                image: AssetImage("images/hicon.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Highways & Exy.",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
