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
    return Scaffold(
      appBar: AppBar(
        title: Text("EV Charger Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "City Name",
                ),
                onSaved: (value) {
                  cityName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Maximum Value of Slow Charger",
                  suffixText: "kW",
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  maxSlowChargerValue = double.parse(value!);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Maximum Value of Fast Charger",
                  suffixText: "kW",
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  maxFastChargerValue = double.parse(value!);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Price of Fast Charger",
                  suffixText: "\$",
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  priceFastCharger = double.parse(value!);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Price of Slow Charger",
                  suffixText: "\$",
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  priceSlowCharger = double.parse(value!);
                },
              ),
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
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process the form data
                      }
                    },
                    child: Text("Submit"),
                  ),
                  TextButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
