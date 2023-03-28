import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabeledSwitch extends StatelessWidget {
  String label;
  bool value;
  void Function(bool) onClick;

  LabeledSwitch({
    Key? key,
    required this.label,
    required this.value,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        CupertinoSwitch(
          value: value,
          onChanged: onClick,
          activeColor: ColorPalette.activeSwitch,
          thumbColor: value ? ColorPalette.primaryBlue : ColorPalette.primaryWhite,
        ),
      ],
    );
  }
}
