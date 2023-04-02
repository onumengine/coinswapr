import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String facebook = '@coinswapr';
  final String instagram = '@coinswapr';
  final String twitter = 'coinswapr';
  final String whatsapp = '+2348168685284';
  final String youtube = '@coinswapr-tube';
  final String email = 'suppert@coinswapr.com';

  final TextStyle tileTitleStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
    color: ColorPalette.greyTextSecondary,
  );

  final TextStyle tileSubtitleStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .5,
    color: ColorPalette.tileTitleText,
  );

  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Information'),
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * .32,
                  width: constraints.maxWidth,
                  child: const Center(
                    child: Text(
                      'coinswapr',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.primaryBlue,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/fb.png',
                    width: 26,
                  ),
                  title: Text(
                    'Facebook',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    facebook,
                    style: tileSubtitleStyle,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/ig.png',
                    width: 26,
                  ),
                  title: Text(
                    'Instagram',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    instagram,
                    style: tileSubtitleStyle,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/twitter.png',
                    width: 26,
                  ),
                  title: Text(
                    'Twitter',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    twitter,
                    style: tileSubtitleStyle,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/whatsapp.png',
                    width: 26,
                  ),
                  title: Text(
                    'Whatsapp',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    whatsapp,
                    style: tileSubtitleStyle,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/youtube.png',
                    width: 26,
                  ),
                  title: Text(
                    'Youtube',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    youtube,
                    style: tileSubtitleStyle,
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/mail.png',
                    width: 26,
                  ),
                  title: Text(
                    'Email',
                    style: tileTitleStyle,
                  ),
                  subtitle: Text(
                    email,
                    style: tileSubtitleStyle,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
