import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/format_date.dart';
import 'package:coinswapr/core/utilities/notification_icon_map.dart';
import 'package:coinswapr/models/notification.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel model;

  const NotificationTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: notifIconMap[model.type.index],
      title: Text(
        model.title,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: ColorPalette.tileTitleText,
        ),
      ),
      subtitle: Text(
        formatDate(model.date),
        style: const TextStyle(
          fontSize: 12,
          letterSpacing: .4,
          color: ColorPalette.tileSubtitleText,
        ),
      ),
    );
  }
}
