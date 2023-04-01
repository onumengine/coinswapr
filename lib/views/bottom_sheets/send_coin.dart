import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:coinswapr/models/coin_symbol_route_arg.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SendCoinBottomSheet extends StatefulWidget {
  const SendCoinBottomSheet({Key? key}) : super(key: key);

  @override
  State<SendCoinBottomSheet> createState() => _SendCoinBottomSheetState();
}

class _SendCoinBottomSheetState extends State<SendCoinBottomSheet> {
  late final CoinSymbolRouteArg routeArgs;
  final TextEditingController address = TextEditingController();
  final TextEditingController cryptoAmount = TextEditingController();
  final TextEditingController fiatAmount = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final double _spacingHeightRatio = .05;

  InputDecoration _createInputDecorationFromHint(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: ColorPalette.searchbarHintText,
        fontSize: 14,
        height: 1.4,
      ),
      errorStyle: const TextStyle(color: Colors.orangeAccent),
      contentPadding: const EdgeInsets.all(10),
      filled: true,
      fillColor: ColorPalette.searchInputBG,
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorPalette.searchBarBorder),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorPalette.searchBarBorder),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorPalette.searchBarBorder),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorPalette.searchBarBorder),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorPalette.searchBarBorder),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorPalette.searchBarBorder,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeArgs =
        ModalRoute.of(context)?.settings.arguments as CoinSymbolRouteArg;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        decoration: const BoxDecoration(
          color: ColorPalette.primaryWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * .14,
              width: constraints.maxWidth,
              child: Center(
                child: ListTile(
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
                    'Send ${routeArgs.name} (${routeArgs.symbol.toUpperCase()})',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.tileTitleText,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 1,
              color: ColorPalette.divider,
            ),
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight * .85,
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const Expanded(child: SizedBox.shrink(),),
                      TextFormField(
                        controller: address,
                        decoration: InputDecoration(
                          hintText:
                              '${routeArgs.name} (${routeArgs.symbol.toUpperCase()}) Wallet Address',
                          hintStyle: const TextStyle(
                            color: ColorPalette.searchbarHintText,
                            fontSize: 14,
                            height: 1.4,
                          ),
                          errorStyle:
                              const TextStyle(color: Colors.orangeAccent),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: ColorPalette.searchInputBG,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.qr_code_scanner,
                              color: ColorPalette.normalIcon,
                            ),
                          ),
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorPalette.searchBarBorder),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorPalette.searchBarBorder),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorPalette.searchBarBorder),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorPalette.searchBarBorder),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorPalette.searchBarBorder),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.searchBarBorder,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                      TextFormField(
                        controller: cryptoAmount,
                        decoration: _createInputDecorationFromHint(
                          'Amount in ${routeArgs.symbol.toUpperCase()}',
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                      TextFormField(
                        controller: fiatAmount,
                        decoration: _createInputDecorationFromHint(
                          'Amount in USD',
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showSnackbar(
                                "Selling 10% of your total ${routeArgs.symbol.toUpperCase()}",
                                context,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorPalette.primaryBlueLight.withOpacity(.1),
                              foregroundColor: ColorPalette.primaryBlue,
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text("10%"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showSnackbar(
                                "Selling 20% of your total ${routeArgs.symbol.toUpperCase()}",
                                context,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorPalette.primaryBlueLight.withOpacity(.1),
                              foregroundColor: ColorPalette.primaryBlue,
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text("20%"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showSnackbar(
                                "Selling 40% of your total ${routeArgs.symbol.toUpperCase()}",
                                context,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorPalette.primaryBlueLight.withOpacity(.1),
                              foregroundColor: ColorPalette.primaryBlue,
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text("40%"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showSnackbar(
                                "Selling 50% of your total ${routeArgs.symbol.toUpperCase()}",
                                context,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorPalette.primaryBlueLight.withOpacity(.1),
                              foregroundColor: ColorPalette.primaryBlue,
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text("50%"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showSnackbar(
                                "Sending all your ${routeArgs.symbol.toUpperCase()}",
                                context,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorPalette.primaryBlueLight.withOpacity(.1),
                              foregroundColor: ColorPalette.primaryBlue,
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text("max"),
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                      Container(
                        width: constraints.maxWidth,
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 8),
                        decoration: BoxDecoration(
                          color: ColorPalette.primaryWhite,
                          borderRadius: BorderRadius.circular(8),
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
                        child: Row(
                          children: [
                            Container(
                              height: constraints.maxHeight * .09,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ColorPalette.blueIcon,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Text(
                                'A Send fee of 0.5 ${routeArgs.symbol.toUpperCase()} will be deducted from the amount of ${routeArgs.symbol.toUpperCase()} you are sending',
                                style: const TextStyle(
                                  color: ColorPalette.blueIcon,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.primaryBlue,
                          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 6.5,),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          fixedSize: Size.fromWidth(constraints.maxWidth)
                        ),
                        child: const Text('Continue'),
                      ),
                      const Expanded(child: SizedBox.shrink(),),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    address.dispose();
    cryptoAmount.dispose();
    fiatAmount.dispose();
    super.dispose();
  }
}
