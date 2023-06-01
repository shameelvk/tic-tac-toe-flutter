// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class GameButton {
  final id;
  String text;
  Color bg;
  bool enable;
  GameButton(
      {this.id, this.bg = Colors.grey, this.text = "", this.enable = true});
}
