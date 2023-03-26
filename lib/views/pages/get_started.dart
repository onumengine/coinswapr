import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final imgKey = GlobalKey();
  final titleKey = GlobalKey();
  final descKey = GlobalKey();
  final textInputKey = GlobalKey();
  final btnKey = GlobalKey();
  final termsConditionsKey = GlobalKey();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email";
    }
    RegExp regExp = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");
    if (!regExp.hasMatch(value)) {
      return "You didn't enter a valid email";
    }
    return null;
  }

  void submitEmail() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushNamed(RouteNames.confirmOTP);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.primaryBlue,
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 19,
                  child: SizedBox(),
                ),
                Container(
                  key: imgKey,
                  color: ColorPalette.primaryWhite,
                  height: 100,
                  width: 100,
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox(),
                ),
                Text(
                  "Get Started",
                  key: titleKey,
                  style: const TextStyle(
                    color: ColorPalette.primaryWhite,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    height: 1.27,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox(),
                ),
                Text(
                  "Join the financial revolution. Sign up for our crypto trading app today for your best trading experience",
                  key: descKey,
                  style: const TextStyle(
                    color: ColorPalette.primaryWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    letterSpacing: .1,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                TextFormField(
                  key: textInputKey,
                  controller: email,
                  validator: validateEmail,
                  cursorColor: ColorPalette.primaryWhite,
                  style: const TextStyle(
                    color: ColorPalette.primaryWhite,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: ColorPalette.primaryWhite,
                      fontSize: 14,
                      height: 1.4,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.orangeAccent
                    ),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: ColorPalette.transparentBG,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 14,
                  child: SizedBox(),
                ),
                ElevatedButton(
                  onPressed: submitEmail,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.primaryWhite,
                    foregroundColor: ColorPalette.primaryBlue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    fixedSize: Size.fromWidth(
                      screenSize.width * .54
                    )
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: .1
                    ),
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox(),
                ),
                Text(
                  "By continuing you agree to our terms and conditions and privacy policy",
                  key: termsConditionsKey,
                  style: const TextStyle(
                    color: ColorPalette.primaryWhite,
                    fontSize: 14,
                    height: 1.43,
                    letterSpacing: .1,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
