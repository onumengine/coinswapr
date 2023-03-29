import 'package:coinswapr/core/temp/price_alert_groups.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/views/molecules/price_alert_tile.dart';
import 'package:flutter/material.dart';

class PriceAlerts extends StatefulWidget {
  const PriceAlerts({Key? key}) : super(key: key);

  @override
  State<PriceAlerts> createState() => _PriceAlertsState();
}

class _PriceAlertsState extends State<PriceAlerts> {
  final TextStyle _coinNameStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
    color: ColorPalette.tileTitleText,
  );
  final TextStyle _coinSymbolStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .1,
    color: ColorPalette.greyText,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: priceAlertGroups
          .map(
            (alertGroup) => Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: ColorPalette.primaryWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x04000000),
                      offset: Offset(0, 1.85),
                      blurRadius: 3.15,
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x07000000),
                      offset: Offset(0, 8.15),
                      blurRadius: 6.52,
                      spreadRadius: 0,
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10) +
                          const EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: alertGroup.coinName,
                              style: _coinNameStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: " (${alertGroup.coinSymbol.toUpperCase()})",
                                  style: _coinSymbolStyle,
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorPalette.greenButtonSecondary,
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .1,
                              ),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                            ),
                            child: const Text("Add Alert"),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: ColorPalette.searchInputBG,
                    ),
                    Column(
                      children: alertGroup.alerts
                          .map((alert) => PriceAlertTile(alert: alert))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
