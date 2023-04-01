import 'package:coinswapr/core/faqs.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  List<bool> _openStatuses = faqs.map((faq) => false).toList();
  static const String _faqAnswer =
      'DeFi simply stands for "decentralized finance," a system of finance where there is no central authority controlling everything. \n\nThe global economy has always operated on centralised finance. This is why the central bank or the government controls the flow of money. The disadvantages of this can be seen in\n\nInflationary pressures, bank account seizures, and high interest rates on bank loans\n\nDecentralized Finance, on the other hand, is governed by a set of codes that function and behave like a bank.They are censorship resistance, so they are not controlled by a single person or organization. Simply put, DeFis are peer-to-peer financial services that operate on the blockchain.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList(
              elevation: 0,
              dividerColor: Colors.transparent,
              expansionCallback: (index, isExpanded) {
                List<bool> newList = List.generate(faqs.length, (index) => false);
                setState(() {
                  _openStatuses = newList;
                  _openStatuses[index] = !isExpanded;
                });
              },
              children: List.generate(
                faqs.length,
                (index) => ExpansionPanel(
                  headerBuilder: (_, isOpen) => Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 24),
                    child: Text(
                      faqs[index].question,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .1,
                        color: ColorPalette.primaryBlack,
                      ),
                    ),
                  ),
                  body: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(_faqAnswer),
                  ),
                  canTapOnHeader: true,
                  isExpanded: (_openStatuses[index]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kCoinswaprPadding * 3),
              child: ElevatedButton(
                onPressed: () {
                  showSnackbar('no tickets UI yet', context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPalette.primaryBlue,
                  elevation: 0,
                  foregroundColor: ColorPalette.primaryWhite,
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Need more help'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
