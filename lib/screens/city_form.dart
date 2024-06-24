import 'dart:ui';

import 'package:flutter/material.dart';

class CityFormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<CityFormScreen> {
  final _formKey = GlobalKey<FormState>();

  String cityName = '';
  double maxSlowChargerValue = 0;
  double maxFastChargerValue = 0;
  double priceFastCharger = 0;
  double priceSlowCharger = 0;
  double initialStateOfCharge = 0;
  double congestionLimit = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/5-2.png"), fit: BoxFit.cover),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.white.withOpacity(0.1),
            appBar: AppBar(
              title: Text("EV Charger Form"),
              centerTitle: true,
              backgroundColor: Colors.white.withOpacity(0),
              foregroundColor: Color(0xff14330A),
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(color: Colors.white30, width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: 16,
                        top: 30,
                        right: 16,
                        left: 16,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "City",
                              ),
                              onSaved: (value) {
                                cityName = value!;
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Maximum No. of Slow Charger",
                                // suffixText: "kW",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                maxSlowChargerValue = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Maximum No. of Fast Charger",
                                // suffixText: "kW",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                maxFastChargerValue = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Price of Slow Charger",
                                suffixText: "\$",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                priceFastCharger = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Price of Fast Charger",
                                suffixText: "\$",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                priceSlowCharger = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Initial State of Charge",
                                suffixText: "%",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                initialStateOfCharge = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Congestion Limit",
                                suffixText: "%",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                congestionLimit = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    _formKey.currentState!.reset();
                                  },
                                  child: Text("Reset"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      // Process the form data
                                    }
                                  },
                                  child: Text("Submit"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
