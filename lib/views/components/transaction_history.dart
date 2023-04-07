import 'package:coinswapr/core/temp/transactions.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/format_date.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/views/molecules/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  String _dateLowerLimit = 'Today';
  final DateTime _today = DateTime.now();
  final DateTime _yesterday = DateTime.now().subtract(
    Duration(
      hours: (DateTime.now().hour + 24),
    ),
  );
  final DateTime _lastWeek = DateTime.now().subtract(
    Duration(
      hours: (DateTime.now().hour + (24 * 7)),
    ),
  );
  final DateTime _lastMonth = DateTime.now().subtract(
    Duration(
      hours: (DateTime.now().hour + (24 * 30)),
    ),
  );

  static const List<String> decisionStructureKeys = [
    'Today',
    'Yesterday',
    'Last Week',
    'last Month',
  ];

  late final Map<String, DateTime> decisionStructure;

  @override
  void initState() {
    super.initState();
    decisionStructure = {
      'Today': _today,
      'Yesterday': _yesterday,
      'Last Week': _lastWeek,
      'Last Month': _lastMonth,
    };
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(kCoinswaprPadding),
                child: DropdownButton<String>(
                  value: _dateLowerLimit,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: ColorPalette.tileTitleText,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  onChanged: (String? newDate) {
                    if (newDate is String) {
                      setState(() {
                        _dateLowerLimit = newDate;
                      });
                    }
                  },
                  underline: const SizedBox.shrink(),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Today',
                      child: Text('Today'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Yesterday',
                      child: Text('Yesterday'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Last Week',
                      child: Text('Last Week'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Last Month',
                      child: Text('Last Month'),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                  transactions.length,
                  (index) => (index == 0 ||
                          ((index > 0) &&
                              (transactions[index].timestamp.day >
                                  transactions[index - 1].timestamp.day)))
                      ? SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              (index > 0)
                                  ? const SizedBox(height: 14)
                                  : const SizedBox.shrink(),
                              const Divider(
                                height: 0,
                                thickness: 6,
                                color: ColorPalette.dividerThick,
                              ),
                              Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kCoinswaprPadding,
                                    vertical: 20,
                                  ),
                                  child: Text(
                                    formatDate(transactions[index].timestamp),
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                      color: ColorPalette.tileTitleText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      letterSpacing: .1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: TransactionTile(
                                  key: UniqueKey(),
                                  txn: transactions[index],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          width: double.infinity,
                          color: ColorPalette.primaryWhite,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: TransactionTile(
                            key: UniqueKey(),
                            txn: transactions[index],
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
