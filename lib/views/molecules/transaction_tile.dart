import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/format_date.dart';
import 'package:coinswapr/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final Transaction txn;
  final TextStyle titleStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
    color: ColorPalette.tileTitleText,
  );
  final TextStyle subtitleStyle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: .4,
    color: ColorPalette.tileSubtitleText,
  );

  const TransactionTile({
    Key? key,
    required this.txn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: ColorPalette.greyTileIconBorder),
          borderRadius: BorderRadius.circular(10),
        ),
        child: txn.type == TransactionType.inflow
            ? const Icon(
                Icons.south_east,
                color: ColorPalette.greenIcon,
              )
            : const Icon(
                Icons.north_west,
                color: ColorPalette.redIcon,
              ),
      ),
      title: Text(
        txn.title,
        style: titleStyle,
      ),
      subtitle: Text(
        formatDate(txn.timestamp),
        style: subtitleStyle,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${txn.fiatSymbol}${txn.fiatAmount}',
            style: titleStyle,
          ),
          const SizedBox(height: 4),
          Text(
            '${txn.cryptoAmount}',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: .5,
              color: ColorPalette.tileSubtitleText,
            ),
          ),
        ],
      ),
    );
  }
}
