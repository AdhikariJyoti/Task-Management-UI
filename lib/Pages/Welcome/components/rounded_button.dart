import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final String text;
  final  press;
  final Color color, textColor;

  const RoundedButton(
      {Key? key,
        required this.text,
        required this.press,
        required this.color,
        required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,

      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: Colors.white,
              onPressed: press,
              child: Text(
                text,
                style: TextStyle(color: Theme.of(context).buttonColor),
              ))),
    );
  }
}