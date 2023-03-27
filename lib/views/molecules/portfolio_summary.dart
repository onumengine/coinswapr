import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class PortfolioSummary extends StatefulWidget {
  const PortfolioSummary({Key? key}) : super(key: key);

  @override
  State<PortfolioSummary> createState() => _PortfolioSummaryState();
}

class _PortfolioSummaryState extends State<PortfolioSummary> {
  final _netWorth = "\$5.550.20";

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: ColorPalette.primaryBlue,
      shadowColor: ColorPalette.shadowColor,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(10) + const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorPalette.primaryWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Total assets in wallet",
              style: TextStyle(
                fontSize: 14,
                height: 1.42,
                color: ColorPalette.primaryBlue,
                letterSpacing: .1,
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              _netWorth,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                height: 1.25,
                color: ColorPalette.primaryBlue
              ),
            ),
          ],
        ),
      ),
    );
  }
}
