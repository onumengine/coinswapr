import 'package:coinswapr/core/temp/transactions.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:coinswapr/views/bottom_sheets/receive_coin.dart';
import 'package:coinswapr/views/bottom_sheets/send_coin.dart';
import 'package:coinswapr/views/molecules/transaction_tile.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  color: ColorPalette.cardShadow,
                  offset: Offset(0, 1.85),
                  blurRadius: 3.15,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: ColorPalette.cardShadowSecond,
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
                  color: ColorPalette.cardShadow,
                  offset: Offset(0, 1.85),
                  blurRadius: 3.15,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: ColorPalette.cardShadowSecond,
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
                    child: Text(
                      "$_coinName (${_coinSymbol.toUpperCase()})",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .5,
                        color: ColorPalette.tileSubtitleText,
                      ),
                    ),
                  ),
                  subtitle: const Text(
                    '\$14,500.00',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.tileTitleText,
                    ),
                  ),
                  trailing: Text(
                    '+2%',
                    style: _positiveChangeText,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Center(
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(10, 15),
                              const FlSpot(20, 20),
                              const FlSpot(50, 70),
                              const FlSpot(60, 50),
                              const FlSpot(90, 40),
                            ],
                            color: ColorPalette.primaryBlue,
                            belowBarData: BarAreaData(
                              show: true,
                              color: ColorPalette.blueChartGradient,
                              gradient: LinearGradient(
                                colors: [
                                  ColorPalette.blueChartGradient
                                      .withOpacity(.5),
                                  ColorPalette.blueChartGradient
                                      .withOpacity(.36),
                                  ColorPalette.blueChartGradient.withOpacity(0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ],
                        lineTouchData: LineTouchData(
                          enabled: true,
                          touchTooltipData: LineTouchTooltipData(
                            tooltipBgColor: ColorPalette.primaryBlue,
                            tooltipPadding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 6,
                            ),
                            tooltipMargin: 8,
                            getTooltipItems: (items) => items
                                .map(
                                  (spot) => LineTooltipItem(
                                    '\$${spot.y}',
                                    const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .5,
                                      color: ColorPalette.primaryWhite,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        gridData: FlGridData(
                          drawVerticalLine: false,
                          getDrawingHorizontalLine: (door) => FlLine(
                            color: ColorPalette.chartHorizGridline,
                            strokeWidth: 1,
                            dashArray: [4, 2],
                          ),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: false,
                            ),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: false,
                            ),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (pt, meta) =>
                                  Text("\$${pt.toInt()}"),
                              reservedSize: 35,
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: false,
                            ),
                          ),
                        ),
                        clipData: FlClipData.all(),
                      ),
                      chartRendererKey: UniqueKey(),
                      swapAnimationDuration: const Duration(milliseconds: 200),
                      swapAnimationCurve: Curves.easeIn,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                              vertical: 0,
                              horizontal: kPaddingTen,
                            ),
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
                  showModalBottomSheet(
                    context: context,
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * .65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    builder: (context) => const SendCoinBottomSheet(),
                    routeSettings: RouteSettings(
                      arguments: CoinSymbolRouteArg(
                        name: _coinName,
                        symbol: _coinSymbol,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: const Text("Send"),
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    builder: (context) => const ReceiveCoinBottomSheet(),
                    routeSettings: RouteSettings(
                      arguments: CoinSymbolRouteArg(
                        name: _coinName,
                        symbol: _coinSymbol,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      ColorPalette.primaryBlueLight.withOpacity(.1),
                  foregroundColor: ColorPalette.primaryBlueLight,
                  elevation: 0,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
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
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
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
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
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
              Text(
                'Transactions',
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
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
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: ColorPalette.normalIcon,
                ),
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
