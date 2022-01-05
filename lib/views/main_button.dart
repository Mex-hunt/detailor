import 'package:flutter/material.dart';

class MyMainButton extends StatelessWidget {
  const MyMainButton({this.label, this.onPressed});

  final Function onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(vertical: 15),
      color: Theme.of(context).accentColor,
      child: Text(
        '$label',
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
      ),
    );
  }
}
