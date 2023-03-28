import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/models/coin.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CoinListTile extends StatelessWidget {
  final void Function() onClick;
  final Coin coin;

  const CoinListTile({
    Key? key,
    required this.onClick,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onClick,
      contentPadding: EdgeInsets.zero,
      leading: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: "https://roqqu.com/static/media/tokens/${coin.symbol}.png",
        imageErrorBuilder: (_, obj, stacktrace) => const Icon(Icons.image),
      ),
      title: Text(
        coin.name,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            coin.symbol.toUpperCase(),
            style: const TextStyle(
              color: Color(0x99000000),
            ),
          ),
          const Text("   "),
          Text(
            "${coin.amount}",
            style: const TextStyle(
              color: Color(0x99000000),
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "\$${coin.value}",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            "${coin.change > 1 ? '+' : ''}${coin.change}%",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: (coin.change > 1)
                  ? ColorPalette.primaryGreen
                  : ColorPalette.primaryRed,
            ),
          ),
        ],
      ),
    );
  }
}
