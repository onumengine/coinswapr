import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/languages.dart';
import 'package:flutter/material.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({Key? key}) : super(key: key);

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String _selectedLanguage = 'EN';

  void setLanguage(String value) {
    setState(() {
      _selectedLanguage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 24,
          ),
          selectedColor: ColorPalette.primaryWhite,
          selectedTileColor: ColorPalette.primaryBlue,
          selected: (_selectedLanguage == supportedLanguages[index].symbol),
          title: Text(supportedLanguages[index].name),
          trailing: (_selectedLanguage == supportedLanguages[index].symbol)
              ? const Icon(
                  Icons.done,
                  color: ColorPalette.primaryWhite,
                )
              : const SizedBox.shrink(),
          onTap: () {
            setLanguage(supportedLanguages[index].symbol);
          },
        ),
        itemCount: supportedLanguages.length,
        separatorBuilder: (_, idx) => const Divider(
          height: 0,
          thickness: 1,
          color: ColorPalette.divider,
        ),
      ),
    );
  }
}
