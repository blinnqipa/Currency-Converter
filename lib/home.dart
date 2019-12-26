import 'package:flutter/material.dart';
import 'package:project1/network.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var valueEntered = 1.0;
@override
  void initState() {
    Network().call();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Enter Macedonian Denar:',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ))),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    valueEntered = double.parse(value);
                  });
                  print(valueEntered);
                },
              ),
            ),
          ),
          Center(child: Text('$valueEntered'),)
        ],
      ),
    );
  }
}
