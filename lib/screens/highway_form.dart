import 'dart:ui';

import 'package:flutter/material.dart';

class HighwayFormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<HighwayFormScreen> {
  final _formKey = GlobalKey<FormState>();

  String highwayName = '';
  int numberOfJunctions = 0;
  double interarrivalTimeMean = 0;
  double interarrivalTimeStdDev = 0;
  double wtThresholdMean = 0;
  double wtThresholdStdDev = 0;
  int maxNumberOfPorts = 0;

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
                                labelText: "Highway Name",
                              ),
                              onSaved: (value) {
                                highwayName = value!;
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Number of Junctions",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                numberOfJunctions = int.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Interarrival Time - Mean (mins)",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                interarrivalTimeMean = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Interarrival Time - Std Dev (mins)",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                interarrivalTimeStdDev = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "WT Threshold - Mean",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                wtThresholdMean = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "WT Threshold - Std Dev",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                wtThresholdStdDev = double.parse(value!);
                              },
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Max No. of Ports",
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                maxNumberOfPorts = int.parse(value!);
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
