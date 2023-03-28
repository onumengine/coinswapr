import 'package:coinswapr/services/notification_settings.dart';
import 'package:flutter/material.dart';

class NotificationSettingsViewModel extends ChangeNotifier {
  NotificationSettingsService notifSettingsService;

  late bool _openTradeEmails,
      _openTradeSMS,
      _canceledTradeEmails,
      _canceledTradeSMS,
      _releasedTradeEmails,
      _releasedTradeSMS,
      _disputeTradeEmails,
      _disputeTradeSMS,
      _tradeStatusEmails,
      _tradeStatusSMS,
      _createStatusEmails,
      _createStatusSMS,
      _sendCoinEmails,
      _sendCoinSMS,
      _receiveCoinEmails,
      _receiveCoinSMS,
      _transactionPinChangeEmails,
      _deviceChangeEmails;

  NotificationSettingsViewModel({required this.notifSettingsService}) {
    _openTradeEmails = notifSettingsService.getOpenTradeEmails();
    _openTradeSMS = notifSettingsService.getOpenTradeSMS();
    _canceledTradeEmails = notifSettingsService.getCanceledTradeEmails();
    _canceledTradeSMS = notifSettingsService.getCanceledTradeSMS();
    _releasedTradeEmails = notifSettingsService.getReleasedTradeEmails();
    _releasedTradeSMS = notifSettingsService.getReleasedTradeSMS();
    _disputeTradeEmails = notifSettingsService.getDisputeTradeEmails();
    _disputeTradeSMS = notifSettingsService.getDisputeTradeSMS();
    _tradeStatusEmails = notifSettingsService.getTradeStatusEmails();
    _tradeStatusSMS = notifSettingsService.getTradeStatusSMS();
    _createStatusEmails = notifSettingsService.getCreateStatusEmails();
    _createStatusSMS = notifSettingsService.getCreateStatusSMS();
    _sendCoinEmails = notifSettingsService.getSendCoinEmails();
    _sendCoinSMS = notifSettingsService.getSendCoinSMS();
    _receiveCoinEmails = notifSettingsService.getReceiveCoinEmails();
    _receiveCoinSMS = notifSettingsService.getReceiveCoinSMS();
    _transactionPinChangeEmails = notifSettingsService.getTransactionPinChangeEmails();
    _deviceChangeEmails = notifSettingsService.getDeviceChangeEmails();
  }

  bool get openTradeEmails => _openTradeEmails;
  bool get openTradeSMS => _openTradeSMS;
  bool get canceledTradeEmails => _canceledTradeEmails;
  bool get canceledTradeSMS => _canceledTradeSMS;
  bool get releaseTradeEmails => _releasedTradeEmails;
  bool get releaseTradeSMS => _releasedTradeSMS;
  bool get disputeTradeEmails => _disputeTradeEmails;
  bool get disputeTradeSMS => _disputeTradeSMS;
  bool get tradeStatusEmails => _tradeStatusEmails;
  bool get tradeStatusSMS => _tradeStatusSMS;
  bool get createStatusEmails => _createStatusEmails;
  bool get createStatusSMS => _createStatusSMS;
  bool get sendCoinEmails => _sendCoinEmails;
  bool get sendCoinSMS => _sendCoinSMS;
  bool get receiveCoinEmails => _receiveCoinEmails;
  bool get receiveCoinSMS => _receiveCoinSMS;
  bool get transactionPinChangeEmails => _transactionPinChangeEmails;
  bool get deviceChange => _deviceChangeEmails;

  void setOpenTradeEmails(bool value) {
    _openTradeEmails = value;
    notifSettingsService.setOpenTradeEmails(value);
    notifyListeners();
  }

  void setOpenTradeSMS(bool value) {
    _openTradeSMS = value;
    notifSettingsService.setOpenTradeSMS(value);
    notifyListeners();
  }

  void setCanceledTradeEmails(bool value) {
    _canceledTradeEmails = value;
    notifSettingsService.setCanceledTradeEmails(value);
    notifyListeners();
  }

  void setCanceledTradeSMS(bool value) {
    _canceledTradeSMS = value;
    notifSettingsService.setCanceledTradeSMS(value);
    notifyListeners();
  }

  void setReleaseTradeEmails(bool value) {
    _releasedTradeEmails = value;
    notifSettingsService.setReleasedTradeEmails(value);
    notifyListeners();
  }

  void setReleaseTradeSMS(bool value) {
    _releasedTradeSMS = value;
    notifSettingsService.setReleasedTradeSMS(value);
    notifyListeners();
  }

  void setDisputeTradeEmails(bool value) {
    _disputeTradeEmails = value;
    notifSettingsService.setDisputeTradeEmails(value);
    notifyListeners();
  }

  void setDisputeTradeSMS(bool value) {
    _disputeTradeSMS = value;
    notifSettingsService.setDisputeTradeSMS(value);
    notifyListeners();
  }

  void setTradeStatusEmails(bool value) {
    _tradeStatusEmails = value;
    notifSettingsService.setTradeStatusEmails(value);
    notifyListeners();
  }

  void setTradeStatusSMS(bool value) {
    _tradeStatusSMS = value;
    notifSettingsService.setTradeStatusSMS(value);
    notifyListeners();
  }

  void setCreateStatusEmails(bool value) {
    _createStatusEmails = value;
    notifSettingsService.setCreateStatusEmails(value);
    notifyListeners();
  }

  void setCreateStatusSMS(bool value) {
    _createStatusSMS = value;
    notifSettingsService.setCreateStatusSMS(value);
    notifyListeners();
  }

  void setSendCoinEmails(bool value) {
    _sendCoinEmails = value;
    notifSettingsService.setSendCoinEmails(value);
    notifyListeners();
  }

  void setSendCoinSMS(bool value) {
    _sendCoinSMS = value;
    notifSettingsService.setSendCoinSMS(value);
    notifyListeners();
  }

  void setReceiveCoinEmails(bool value) {
    _receiveCoinEmails = value;
    notifSettingsService.setReceiveCoinEmails(value);
    notifyListeners();
  }

  void setReceiveCoinSMS(bool value) {
    _receiveCoinSMS = value;
    notifSettingsService.setReceiveCoinSMS(value);
    notifyListeners();
  }

  void setTransactionPinChangeEmails(bool value) {
    _transactionPinChangeEmails = value;
    notifSettingsService.setTransactionPinChangeEmails(value);
    notifyListeners();
  }

  void setDeviceChangeEmails(bool value) {
    _deviceChangeEmails = value;
    notifSettingsService.setDeviceChangeEmails(value);
    notifyListeners();
  }
}
