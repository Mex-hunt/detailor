import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          height: 32,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
