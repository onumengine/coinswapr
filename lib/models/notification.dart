import 'package:coinswapr/core/utilities/notification_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NotificationModel extends Equatable {
  late Icon icon;
  final String title;
  final DateTime date;
  final NotificationType type;

  NotificationModel({
    required this.title,
    required this.date,
    required this.type,
  });

  @override
  List<Object?> get props => [
    icon,
    title,
    date,
    type,
  ];
}