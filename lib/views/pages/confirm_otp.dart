import 'dart:async';

import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class ConfirmOTP extends StatefulWidget {
  const ConfirmOTP({Key? key}) : super(key: key);

  @override
  State<ConfirmOTP> createState() => _ConfirmOTPState();
}

class _ConfirmOTPState extends State<ConfirmOTP> {
  static const double horizontalPadding = 24;
  final titleKey = GlobalKey();
  final subtitleKey = GlobalKey();
  final otpKey = GlobalKey();
  final rowKey = GlobalKey();
  final btnRowKey = GlobalKey();
  final OtpFieldController otpFieldController = OtpFieldController();

  String userEmail = "";

  void verifyOTP(String value) {
    //  TODO: Implement verifyOTP
    Timer(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteNames.home,
        (route) => false,
      );
    });
  }

  void resendCode() {
    showSnackbar("Resent code", context);
  }

  @override
  void initState() {
    super.initState();
    userEmail = "ku...@gmail.com";
    Timer(const Duration(milliseconds: 500), () {
      if (mounted == false) return;
      otpFieldController.setFocus(0);
    });
  }

  @override
  void didUpdateWidget(covariant ConfirmOTP oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.primaryBlue,
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryBlue,
        automaticallyImplyLeading: true,
        elevation: 0,
        foregroundColor: ColorPalette.primaryWhite,
      ),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Verification Code",
                key: titleKey,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1.27,
                  color: ColorPalette.primaryWhite,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "A verification Code has been sent to this email address $userEmail",
                key: subtitleKey,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.43,
                  color: ColorPalette.primaryWhite,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              OTPTextField(
                controller: otpFieldController,
                length: 5,
                width: screenSize.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: ColorPalette.transparentBG,
                ),
                fieldWidth: 60,
                outlineBorderRadius: 8,
                fieldStyle: FieldStyle.box,
                onChanged: (value) {},
                onCompleted: verifyOTP,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  height: 1.25,
                  color: ColorPalette.primaryWhite,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: ColorPalette.primaryWhite,
                      textStyle: const TextStyle(
                        fontSize: 14,
                        height: 1.42,
                        letterSpacing: .1,
                      ),
                    ),
                    onPressed: resendCode,
                    child: const Text(
                      "Resend Code",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
