import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/format_date.dart';
import 'package:coinswapr/models/price_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceAlertTile extends StatefulWidget {
  final PriceAlert alert;

  const PriceAlertTile({Key? key, required this.alert}) : super(key: key);

  @override
  State<PriceAlertTile> createState() => _PriceAlertTileState();
}

class _PriceAlertTileState extends State<PriceAlertTile> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.alert.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (widget.alert.type == AlertType.below)
              ? ColorPalette.redPriceAlertIconBG
              : ColorPalette.greenPriceAlertIconBG,
        ),
        child: Center(
          child: Icon(
            (widget.alert.type == AlertType.below)
                ? Icons.arrow_drop_down
                : Icons.arrow_drop_up,
            color: widget.alert.type == AlertType.below
                ? ColorPalette.redIcon
                : ColorPalette.greenIcon,
          ),
        ),
      ),
      title: Text(widget.alert.description),
      subtitle: Text(formatDate(widget.alert.dateCreated)),
      trailing: CupertinoSwitch(
        onChanged: (value) {
          setState(() {
            _isEnabled = value;
          });
        },
        value: _isEnabled,
        activeColor: ColorPalette.activeSwitch,
        thumbColor: _isEnabled
            ? ColorPalette.primaryBlue
            : ColorPalette.primaryWhite,
      ),
    );
  }
}
