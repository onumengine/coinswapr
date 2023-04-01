import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:transparent_image/transparent_image.dart';

class ReceiveCoinBottomSheet extends StatefulWidget {
  const ReceiveCoinBottomSheet({Key? key}) : super(key: key);

  @override
  State<ReceiveCoinBottomSheet> createState() => _ReceiveCoinBottomSheetState();
}

class _ReceiveCoinBottomSheetState extends State<ReceiveCoinBottomSheet> {
  final String _walletAddress = 'dfdfwrewelfmkrwmoejkwrlwpeoijrojroewjrjwoejrweojrjfnnwro34';
  late final CoinSymbolRouteArg routeArgs;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeArgs = ModalRoute.of(context)?.settings.arguments as CoinSymbolRouteArg;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Container(
        width: constraints.maxWidth,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: ColorPalette.primaryWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: kPaddingTen,
            horizontal: kCoinswaprPadding,
          ),
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .14,
                width: constraints.maxWidth,
                child: Center(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                      "https://roqqu.com/static/media/tokens/${routeArgs.symbol}.png",
                      imageErrorBuilder: (_, obj, stacktrace) =>
                      const Icon(Icons.image),
                      height: 50,
                      width: 50,
                    ),
                    title: Text(
                      'Receive ${routeArgs.name} (${routeArgs.symbol.toUpperCase()})',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.tileTitleText,
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox.shrink(),
              ),
              PrettyQr(
                data: _walletAddress,
                size: 200,
                errorCorrectLevel: QrErrorCorrectLevel.L,
                roundEdges: true,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    vertical: kPaddingTen, horizontal: 24),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        ClipboardData(
                          text: _walletAddress,
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
                      _walletAddress,
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
                            text: _walletAddress,
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
                            text: _walletAddress,
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
              const Expanded(
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
