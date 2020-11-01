import 'package:flutter/material.dart';

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

const kResultStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMIStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyStyle = TextStyle(
  fontSize: 22.0,
);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8E8D98),
          ),
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        color: Colors.purple,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}
