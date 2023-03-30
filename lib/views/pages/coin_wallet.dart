import 'package:coinswapr/core/temp/transactions.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:coinswapr/views/molecules/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CoinWallet extends StatefulWidget {
  const CoinWallet({Key? key}) : super(key: key);

  @override
  State<CoinWallet> createState() => _CoinWalletState();
}

class _CoinWalletState extends State<CoinWallet> {
  late String _coinSymbol, _coinName;
  final TextStyle _positiveChangeText = const TextStyle(
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: ColorPalette.greenIcon,
  );
  final List<String> _intervals = ['1h', '6h', '24h', '1w', '1m'];
  late String _selectedInterval;
  int _selectedTransactionRange = 7;

  void changeInterval(String interval) {
    setState(() {
      _selectedInterval = interval;
    });
  }

  void _changeTransactionRange(int? value) {
    if (value is int) {
      setState(() {
        _selectedTransactionRange = value;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedInterval = _intervals[0];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final CoinSymbolRouteArg args =
        ModalRoute.of(context)?.settings.arguments as CoinSymbolRouteArg;
    _coinSymbol = args.symbol;
    _coinName = args.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryWhite,
        foregroundColor: ColorPalette.appbarText,
        elevation: 0,
        title: Text("${(_coinSymbol ?? "").toUpperCase()} Wallet"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(kCoinswaprPadding),
        children: [
          Container(
            padding: const EdgeInsets.all(kPaddingTen),
            decoration: BoxDecoration(
              color: ColorPalette.primaryWhite,
              borderRadius: BorderRadius.circular(kBorderRadiusTwelve),
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
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    padding: const EdgeInsets.all(kPaddingTen),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x1AF7931A),
                    ),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          "https://roqqu.com/static/media/tokens/$_coinSymbol.png",
                      imageErrorBuilder: (_, obj, stacktrace) =>
                          const Icon(Icons.image),
                    ),
                  ),
                  title: Text(
                    _coinName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                      color: Color(0xDE000000),
                    ),
                  ),
                  trailing: Text(
                    '+25%',
                    style: _positiveChangeText,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      '6.509938000',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xDE000000),
                      ),
                    ),
                  ),
                  subtitle: Text(
                    '\$125,550,000.20',
                    style: TextStyle(
                      letterSpacing: .1,
                      color: Color(0x99000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          Container(
            padding: const EdgeInsets.all(kPaddingTen),
            decoration: BoxDecoration(
              color: ColorPalette.primaryWhite,
              borderRadius: BorderRadius.circular(kBorderRadiusTwelve),
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
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(right: 5),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("$_coinName (${_coinSymbol.toUpperCase()})"),
                  ),
                  subtitle: const Text(
                    '\$14,500.00',
                    style: TextStyle(),
                  ),
                  trailing: Text(
                    '+2%',
                    style: _positiveChangeText,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _intervals
                      .map(
                        (interval) => GestureDetector(
                          onTap: () {
                            changeInterval(interval);
                          },
                          child: Chip(
                            label: Text(
                              interval,
                            ),
                            labelStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            labelPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: kPaddingTen),
                            backgroundColor: (_selectedInterval == interval)
                                ? ColorPalette.chipBG
                                : ColorPalette.primaryWhite,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 44),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  showSnackbar("Sending ${_coinSymbol.toUpperCase()}", context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                ),
                child: const Text("Send"),
              ),
              ElevatedButton(
                onPressed: () {
                  showSnackbar(
                      "Receiving ${_coinSymbol.toUpperCase()}", context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                ),
                child: const Text("Receive"),
              ),
              ElevatedButton(
                onPressed: () {
                  showSnackbar("Buying ${_coinSymbol.toUpperCase()}", context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                ),
                child: const Text("Buy"),
              ),
              ElevatedButton(
                onPressed: () {
                  showSnackbar("Selling ${_coinSymbol.toUpperCase()}", context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                ),
                child: const Text("Sell"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .1,
                ),
              ),
              DropdownButton<int>(
                value: _selectedTransactionRange,
                items: const [
                  DropdownMenuItem<int>(
                    value: 1,
                    child: Text("Today"),
                  ),
                  DropdownMenuItem<int>(
                    value: 7,
                    child: Text("Last 7 days"),
                  ),
                  DropdownMenuItem<int>(
                    value: 30,
                    child: Text("Last 30 days"),
                  ),
                  DropdownMenuItem<int>(
                    value: 70,
                    child: Text("All time"),
                  ),
                ],
                onChanged: _changeTransactionRange,
                icon: const Icon(Icons.keyboard_arrow_down),
                underline: const SizedBox.shrink(),
              )
            ],
          ),
          const SizedBox(height: kCoinswaprPadding),
          ...transactions.map(
            (txn) => Padding(
              padding: const EdgeInsets.only(bottom: kCoinswaprPadding),
              child: TransactionTile(txn: txn),
            ),
          ),
        ],
      ),
    );
  }
}
