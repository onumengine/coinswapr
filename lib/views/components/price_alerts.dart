import 'package:flutter/material.dart';

class PriceAlerts extends StatefulWidget {
  const PriceAlerts({Key? key}) : super(key: key);

  @override
  State<PriceAlerts> createState() => _PriceAlertsState();
}

class _PriceAlertsState extends State<PriceAlerts> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Price Alerts"),
    );
  }
}
