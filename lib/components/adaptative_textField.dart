import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final String? label;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  AdaptativeTextField({
    this.label,
    this.onSubmitted,
    this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return (defaultTargetPlatform == TargetPlatform.iOS)
        ? Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              controller: controller,
              onSubmitted: onSubmitted,
              keyboardType: keyboardType,
              placeholder: label,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
