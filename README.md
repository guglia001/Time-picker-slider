# `Time Slider Picker`

> A time Slider for picking hours

# List Hours example:

We need to create a radio model class that only have two parameters:

```dart
class RadioModel {
  bool isSelected;
  String hourText;
}
```

> Then this is how can we create a list

```dart
List<RadioModel> hourList = [
      RadioModel(false, '10am'),
      RadioModel(false, '11am'),
      RadioModel(false, '12pm'),
      RadioModel(false, '1pm')
    ];
```

## In app example

![alt text](https://res.cloudinary.com/dr7sntabv/image/upload/v1588884793/Screenshot_from_2020-04-18_22-08-59_k4itey.png "In app example")

## Important info

> This is how works when you select a hour

```dart
setState(() {
 widget.hoursList.forEach((element) => element.isSelected = false);
 widget.hoursList[index].isSelected = true;
 });
```

this will to make all items ``` isSelected ``` as false execept the selected one

## Constructor 
``` dart
  final List<RadioModel> hoursList;
  final Color color;
  final Color selectedColor;
  final Color textColor;
  final Color selectedTextColor;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final double separation;
```

## Sample app example 



![alt text](https://res.cloudinary.com/dr7sntabv/image/upload/v1588885641/Screenshot_1588885516_asi80q.png ) ![alt text](https://res.cloudinary.com/dr7sntabv/image/upload/v1588885641/Screenshot_1588885510_so7t3p.png )

``` dart 
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

```


