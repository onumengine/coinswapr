import 'package:coinswapr/core/temp/notifications.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/show_snackbar.dart';
import 'package:coinswapr/views/molecules/notification_listtile.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  void _openNotificationSettings() {
    showSnackbar("No notification settings UI yet", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryWhite,
        foregroundColor: ColorPalette.appbarText,
        elevation: 0,
        title: const Text('Notifications'),
        actions: [
          IconButton(
            onPressed: _openNotificationSettings,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: notifications
            .map((notification) => NotificationTile(model: notification))
            .toList(),
      ),
    );
  }
}
