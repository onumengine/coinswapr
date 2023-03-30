import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/temp/coins.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/models/coin.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:coinswapr/views/molecules/coin_listtile.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final TextEditingController searchQuery = TextEditingController();
  List<Coin> shallowCopy = List.from(coins);

  void onChangeSearchQuery(String query) {
    List<Coin> results = coins
        .where((element) =>
            (element.name.toLowerCase().contains(query.toLowerCase()) ||
                element.symbol.toLowerCase().contains(query.toLowerCase())))
        .toList();
    setState(() {
      shallowCopy = results;
    });
  }

  void selectCoin(String symbol, String name) {
    Navigator.of(context).pushNamed(
      RouteNames.coinWallet,
      arguments: CoinSymbolRouteArg(symbol: symbol, name: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: <Widget>[
        TextField(
          controller: searchQuery,
          onChanged: onChangeSearchQuery,
          decoration: const InputDecoration(
            hintText: "Search Token",
            hintStyle: TextStyle(
              color: ColorPalette.searchbarHintText,
              fontSize: 14,
              height: 1.4,
            ),
            errorStyle: TextStyle(color: Colors.orangeAccent),
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: ColorPalette.searchInputBG,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.searchBarBorder),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.searchBarBorder),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.searchBarBorder),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.searchBarBorder),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorPalette.searchBarBorder),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.searchBarBorder,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ...shallowCopy.map(
          (coin) => Padding(
            key: UniqueKey(),
            padding: const EdgeInsets.only(top: 24),
            child: CoinListTile(
              onClick: () => selectCoin(coin.symbol, coin.name),
              coin: coin,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    searchQuery.dispose();
    super.dispose();
  }
}
