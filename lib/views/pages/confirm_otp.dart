import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class ConfirmOTP extends StatefulWidget {
  const ConfirmOTP({Key? key}) : super(key: key);

  @override
  State<ConfirmOTP> createState() => _ConfirmOTPState();
}

class _ConfirmOTPState extends State<ConfirmOTP> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.primaryBlue,
      body: SizedBox(),
    );
  }
}
