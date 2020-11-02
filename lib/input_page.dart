import 'package:flutter/material.dart';
import 'package:flutter_app/class_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int studyTime = 0;
  int time = 0;

  String message() {
    if (studyTime < 20) {
      return 'yeah';
    } else if (studyTime < 50) {
      return 'nice!';
    } else if (studyTime < 100) {
      return 'Great!';
    } else if (studyTime >= 100) {
      return 'Wonderful';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    message(),
                  ),
                  Image.asset(
                    'images/sophian.jpg',
                    width: 150.0,
                    height: 150.0,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff535353),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          studyTime.toString(), //変数studyTimeを表示
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Color(0xff535353),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(15.0),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Study Time',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff535353),
                    ),
                  ),
                  Text(
                    time.toString(),
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xffffaa00),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              if (time < 24) {
                                time++;
                              }
                            });
                          }),
                      SizedBox(
                        width: 30.0,
                      ),
                      RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              if (time > 0) {
                                time--;
                              }
                            });
                          }),
                    ],
                  ),
                ],
              ),
              margin: EdgeInsets.all(15.0),
            ),
          ),
          BottomButton(
            onTap: () {
              setState(() {
                studyTime = studyTime + time;
                time = 0;
              });
            },
            buttonTitle: "記録する！",
          ),
        ],
      ),
    );
  }
}
