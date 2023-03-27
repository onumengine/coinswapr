import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/core/utilities/notification_type.dart';
import 'package:flutter/material.dart';

Map<int, Widget> notifIconMap = {
  NotificationType.inflow.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.greenIconBg,
    ),
    child: const Icon(
      Icons.south_west,
      color: ColorPalette.greenIcon,
    ),
  ),
  NotificationType.outflow.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.redIconBG,
    ),
    child: const Icon(
      Icons.north_east,
      color: ColorPalette.redIcon,
    ),
  ),
  NotificationType.priceAlert.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.normalIconBG,
    ),
    child: const Icon(
      Icons.timer_outlined,
      color: ColorPalette.normalIcon,
    ),
  ),
  NotificationType.informative.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.blueIconBG,
    ),
    child: const Icon(
      Icons.notifications_none,
      color: ColorPalette.blueIcon,
    ),
  ),
  NotificationType.error.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.redIconBG,
    ),
    child: const Icon(
      Icons.notifications_none,
      color: ColorPalette.redIcon,
    ),
  ),
  NotificationType.warning.index: Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorPalette.yellowIconBG,
    ),
    child: const Icon(
      Icons.notifications_none,
      color: ColorPalette.yellowIcon,
    ),
  ),
};