import 'package:flutter/material.dart';
import 'package:time_slider/time_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<RadioModel> hourList = [
      RadioModel(false, '10am'),
      RadioModel(false, '11am'),
      RadioModel(false, '9pm'),
      RadioModel(false, '10pm'),
    ];

    return MaterialApp(
      title: 'TimeSlider example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TimeSlider Example'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: 100,
            child: TimeSlider(
            onPressed: () {
              print('Changed!');
            },
              separation: 10,
              hoursList: hourList,
              height: 37,
              width: 70,
              textColor: Colors.black,
              selectedTextColor: Colors.white,
              color: Colors.red,
              selectedColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
