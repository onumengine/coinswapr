import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final TextStyle tileTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
    color: ColorPalette.primaryBlack,
  );
  String _language = 'USD';
  bool _darkModeEnabled = false;

  void openPage(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.manage_accounts,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Profile',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.public,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Language',
              style: tileTitle,
            ),
            trailing: DropdownButton<String>(
              items: null,
              hint: const Text(
                'English',
              ),
              onChanged: null,
              underline: const SizedBox.shrink(),
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: ColorPalette.appbarText,
              ),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: .1,
                color: ColorPalette.tileSubtitleText,
              ),
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.local_atm,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Currency',
              style: tileTitle,
            ),
            trailing: DropdownButton<String>(
              value: _language,
              underline: const SizedBox.shrink(),
              borderRadius: BorderRadius.circular(kBorderRadiusTwelve),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: .1,
                color: ColorPalette.tileSubtitleText,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: ColorPalette.appbarText,
              ),
              items: const [
                DropdownMenuItem<String>(
                  value: 'USD',
                  child: Text("USD"),
                ),
                DropdownMenuItem<String>(
                  value: 'NGN',
                  child: Text("NGN"),
                ),
              ],
              onChanged: (String? value) {
                if (value is String) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_phone_outlined,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Kyc Verification',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.security,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Security',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.nightlight_round_sharp,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Dark Theme',
              style: tileTitle,
            ),
            trailing: CupertinoSwitch(
              value: _darkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
              activeColor: ColorPalette.activeSwitch,
              thumbColor: _darkModeEnabled ? ColorPalette.primaryBlue : ColorPalette.primaryWhite,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.link,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Payment Links',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Refer a friend',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.perm_contact_cal_outlined,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Contact Information',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outline_outlined,
              color: ColorPalette.appbarText,
            ),
            title: Text(
              'Help',
              style: tileTitle,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: ColorPalette.appbarText,
            ),
            onTap: () {
              openPage(RouteNames.home);
            },
          ),
        ],
      ),
    );
  }
}
