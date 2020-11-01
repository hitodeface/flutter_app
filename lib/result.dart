import 'package:flutter/material.dart';
import 'package:flutter_app/class_box.dart';
import 'package:flutter_app/input_page.dart';
import 'package:flutter_app/calculator.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: ReusableCard(
                colour: Color(0xff1d1e33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            buttonTitle: "Replay",
          ),
        ],
      ),
    );
  }
}
