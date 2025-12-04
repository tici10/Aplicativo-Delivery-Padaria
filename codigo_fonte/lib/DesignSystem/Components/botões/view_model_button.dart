import 'package:flutter/material.dart';

enum ActionButtonStyle{
  primary,
  secondary,
  tertiary
}

enum ActionButtonSize{
  small,
  medium,
  large
}

class ButtonViewModel{
  final ActionButtonStyle style;
  final ActionButtonSize size;
  final Image? image;
  final String text;
  final IconData? icon;

  ButtonViewModel({
    required this.size,
    required this.style,
    this.image,
    required this.text,
    this.icon, required Null Function() onPressed,
  });

  VoidCallback? get onPressed => null;
}