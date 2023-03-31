import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Referral extends StatefulWidget {
  const Referral({Key? key}) : super(key: key);

  @override
  State<Referral> createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  final String _referralLink =
      'https://app.kudipeer.com/get-started?referal=qoejej293jdkdudu73j3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refer a friend'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: kPaddingTen,
          horizontal: kCoinswaprPadding,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: const Text(
                  'Help your Friends discover the beauty of Coinswapr and earn 1% of the commision we collect from them within their first 30days',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: .5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Flexible(
              flex: 6,
              child: SizedBox.expand(),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorPalette.primaryWhite,
                borderRadius: BorderRadius.circular(kBorderRadiusTwelve),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1.85),
                    blurRadius: 3.15,
                    spreadRadius: 0,
                    color: ColorPalette.cardShadow,
                  ),
                  BoxShadow(
                    offset: Offset(0, 8.15),
                    blurRadius: 6.52,
                    spreadRadius: 0,
                    color: ColorPalette.cardShadowSecond,
                  )
                ],
              ),
              child: Column(
                children: [
                  PrettyQr(
                    data: _referralLink,
                    size: 200,
                    errorCorrectLevel: QrErrorCorrectLevel.L,
                    roundEdges: true,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    color: ColorPalette.chipBG,
                    padding: const EdgeInsets.symmetric(
                        vertical: kPaddingTen, horizontal: 24),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(
                              text: _referralLink,
                            ),
                          )
                              .then(
                                (value) => showSnackbar(
                                  'Link copied!',
                                  context,
                                ),
                              )
                              .catchError(
                                (err) => showSnackbar(
                                  'Failed to copy',
                                  context,
                                ),
                              );
                        },
                        child: Text(
                          _referralLink,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorPalette.bottomNavbarText,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 52,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(
                              ClipboardData(
                                text: _referralLink,
                              ),
                            )
                                .then(
                                  (value) => showSnackbar(
                                    'Link copied!',
                                    context,
                                  ),
                                )
                                .catchError(
                                  (err) => showSnackbar(
                                    'Failed to copy',
                                    context,
                                  ),
                                );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(kPaddingTen),
                            decoration: BoxDecoration(
                              color: ColorPalette.chipBG,
                              borderRadius: BorderRadius.circular(
                                kBorderRadiusTwelve,
                              ),
                            ),
                            child: const Icon(
                              Icons.copy,
                              color: ColorPalette.appbarText,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(
                              ClipboardData(
                                text: _referralLink,
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(kPaddingTen),
                            decoration: BoxDecoration(
                              color: ColorPalette.chipBG,
                              borderRadius: BorderRadius.circular(
                                kBorderRadiusTwelve,
                              ),
                            ),
                            child: const Icon(
                              Icons.share,
                              color: ColorPalette.appbarText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 5,
              child: SizedBox.expand(),
            ),
            Flexible(
              flex: 11,
              child: Column(
                children: const [
                  Text(
                    '\$300',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Commission earned so far on your referrals')
                ],
              ),
            ),
            const Flexible(
              flex: 7,
              child: SizedBox.expand(),
            ),
          ],
        ),
      ),
    );
  }
}
