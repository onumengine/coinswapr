import 'package:coinswapr/core/temp/price_alert_groups.dart';
import 'package:coinswapr/models/price_alert.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PriceAlertsState extends Equatable {}

class EmptyState extends PriceAlertsState {
  final int numberOfAlerts = 0;

  @override
  List<Object?> get props => [numberOfAlerts];
}

class LoadingState extends PriceAlertsState {
  @override
  List<Object?> get props => [];
}

class PopulatedState extends PriceAlertsState {
  final int numberOfAlerts;

  PopulatedState({ required this.numberOfAlerts });

  @override
  List<Object?> get props => [numberOfAlerts];
}

class PriceAlertsViewModel extends ChangeNotifier {
  late PriceAlertsState _state;
  late List<PriceAlertGroup> _alertGroups;

  PriceAlertsViewModel() {
    _state = LoadingState();
    _alertGroups = priceAlertGroups;
  }

  PriceAlertsState get state => _state;
  List<PriceAlertGroup> get alertGroups => _alertGroups;
}