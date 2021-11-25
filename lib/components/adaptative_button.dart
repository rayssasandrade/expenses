import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  AdaptativeButton(this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return (defaultTargetPlatform == TargetPlatform.iOS)
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : TextButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                color: Theme.of(context).textTheme.button?.color,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: StadiumBorder(),
            ),
          );
  }
}
