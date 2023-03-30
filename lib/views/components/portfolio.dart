import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/temp/coins.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:coinswapr/views/molecules/coin_listtile.dart';
import 'package:coinswapr/views/molecules/portfolio_summary.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void addNewWallet() {
    _showSnackbar("Adding new wallet");
  }

  void selectCoin(String symbol, String name) {
    Navigator.of(context).pushNamed(
      RouteNames.coinWallet,
      arguments: CoinSymbolRouteArg(name: name, symbol: symbol),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: <Widget>[
        PortfolioSummary(
          key: UniqueKey(),
        ),
        const SizedBox(
          height: 49,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'wallets',
              style: TextStyle(
                  color: ColorPalette.primaryBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: addNewWallet,
              child: const Chip(
                label: Text(
                  "Add New Wallet",
                  style: TextStyle(color: ColorPalette.chipForeground),
                ),
                avatar: Icon(
                  Icons.add,
                  color: ColorPalette.chipForeground,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                backgroundColor: ColorPalette.chipBG,
              ),
            ),
          ],
        ),
        ...(coins.map(
          (coin) => Padding(
              key: UniqueKey(),
              padding: const EdgeInsets.only(top: 20),
              child: CoinListTile(
                  onClick: () => selectCoin(coin.symbol, coin.name), coin: coin)),
        )),
      ],
    );
  }
}
