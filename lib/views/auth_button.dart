import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({this.label, this.onTap});

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Theme.of(context).primaryColor,
        height: 70,
        alignment: Alignment.center,
        child: Text(
          '$label',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
