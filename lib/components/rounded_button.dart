import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  Color color;
  String buttonText;
  String nextRoute;
  RoundedButton(this.color, this.buttonText, this.nextRoute);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            //Go to registration screen.
            Navigator.pushNamed(context, nextRoute);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
