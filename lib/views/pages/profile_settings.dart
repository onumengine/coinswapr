import 'package:coinswapr/core/temp/coin_volumes.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final TextStyle _tileTitle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: ColorPalette.primaryBlack,
  );
  final TextStyle _tileSubtitle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorPalette.primaryBlack,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
            vertical: kPaddingTen, horizontal: kCoinswaprPadding),
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorPalette.primaryWhite,
                borderRadius: BorderRadius.circular(kBorderRadiusTwelve),
                boxShadow: const <BoxShadow>[
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
                ]),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: CircleAvatar(
                    backgroundColor: ColorPalette.primaryWhite,
                    radius: 35,
                    child: Image.asset('assets/bored-ape.png'),
                  ),
                  title: Text(
                    'Account Information',
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                      letterSpacing: .1,
                      color: ColorPalette.primaryBlack,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.edit,
                    color: ColorPalette.appbarText,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  height: 0,
                  color: ColorPalette.divider,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    'Email Address',
                    style: _tileTitle,
                  ),
                  subtitle: Text(
                    'monkeyKing001@gmail.com',
                    style: _tileSubtitle,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  height: 0,
                  color: ColorPalette.divider,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    'Phone Number',
                    style: _tileTitle,
                  ),
                  subtitle: Text(
                    '+000100200300400',
                    style: _tileSubtitle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 41,
          ),
          const Text(
            'Transaction Volume',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: .1,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 272,
            child: Center(
              child: PieChart(
                PieChartData(sections: [
                  PieChartSectionData(
                    value: 25,
                    color: const Color(0xFFFF007A),
                    radius: 100,
                    title: '25%',
                    titleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.primaryWhite,
                    ),
                  ),
                  PieChartSectionData(
                    value: 35,
                    color: const Color(0xFFEE8A10),
                    radius: 100,
                    title: '35%',
                    titleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.primaryWhite,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: const Color(0xFF50AF95),
                    radius: 100,
                    title: '20%',
                    titleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.primaryWhite,
                    ),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: const Color(0xFF8C8C8C),
                    radius: 100,
                    title: '20%',
                    titleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.primaryWhite,
                    ),
                  ),
                ], centerSpaceRadius: 0, sectionsSpace: 5),
                swapAnimationCurve: Curves.bounceIn,
                swapAnimationDuration: const Duration(milliseconds: 500),
              ),
            ),
          ),
          LayoutBuilder(
            builder: (_, constraints) => Container(
              width: constraints.maxWidth,
              child: Row(
                children: [
                  ...coinVolumes.map(
                    (vol) => SizedBox(
                      width: constraints.maxWidth / 4,
                      child: Chip(
                        avatar: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: vol.color,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        label: Text(vol.assetName),
                        backgroundColor: ColorPalette.primaryWhite,
                        labelPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            'Chart showing the four assets you have traded with the most',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: ColorPalette.greyTextSecondary,
              letterSpacing: .5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
