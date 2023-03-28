import 'package:shared_preferences/shared_preferences.dart';

class NotificationSettingsService {
  static const OPEN_TRADE_EMAILS = 'opentradeemails';
  static const OPEN_TRADE_SMS = 'opentradesms';
  static const CANCELED_TRADE_EMAILS = 'canceledtradeemails';
  static const CANCELED_TRADE_SMS = 'canceledtradesms';
  static const RELEASED_TRADE_EMAILS = 'releasededtradeemails';
  static const RELEASED_TRADE_SMS = 'releasedtradesms';
  static const DISPUTE_TRADE_EMAILS = 'disputetradeemails';
  static const DISPUTE_TRADE_SMS = 'disputetradesms';
  static const TRADE_STATUS_EMAILS = 'tradestatusemails';
  static const TRADE_STATUS_SMS = 'tradestatussms';
  static const CREATE_STATUS_EMAILS = 'createstatusemails';
  static const CREATE_STATUS_SMS = 'createstatussms';
  static const SEND_COIN_EMAILS = 'sendcoinemails';
  static const SEND_COIN_SMS = 'sendcoinsms';
  static const RECEIVE_COIN_EMAILS = 'receivecoinemails';
  static const RECEIVE_COIN_SMS = 'receivecoinsms';
  static const TRANSACTION_PIN_CHANGE_EMAILS = 'transactionpinchangeemails';
  static const DEVICE_CHANGE_EMAILS = 'transactionpinchangesms';


  final SharedPreferences store;

  NotificationSettingsService({
    required this.store,
  });

  Future<void> setOpenTradeEmails(bool value) async {
    await store.setBool(OPEN_TRADE_EMAILS, value);
  }

  bool getOpenTradeEmails() {
    return store.getBool(OPEN_TRADE_EMAILS) ?? false;
  }

  Future<void> setOpenTradeSMS(bool value) async {
    await store.setBool(OPEN_TRADE_SMS, value);
  }

  bool getOpenTradeSMS() {
    return store.getBool(OPEN_TRADE_SMS) ?? false;
  }

  Future<void> setCanceledTradeEmails(bool value) async {
    await store.setBool(CANCELED_TRADE_EMAILS, value);
  }

  bool getCanceledTradeEmails() {
    return store.getBool(CANCELED_TRADE_EMAILS) ?? false;
  }

  Future<void> setCanceledTradeSMS(bool value) async {
    await store.setBool(CANCELED_TRADE_SMS, value);
  }

  bool getCanceledTradeSMS() {
    return store.getBool(CANCELED_TRADE_SMS) ?? false;
  }

  Future<void> setReleasedTradeEmails(bool value) async {
    await store.setBool(RELEASED_TRADE_EMAILS, value);
  }

  bool getReleasedTradeEmails() {
    return store.getBool(RELEASED_TRADE_EMAILS) ?? false;
  }

  Future<void> setReleasedTradeSMS(bool value) async {
    await store.setBool(RELEASED_TRADE_SMS, value);
  }

  bool getReleasedTradeSMS() {
    return store.getBool(RELEASED_TRADE_SMS) ?? false;
  }

  Future<void> setDisputeTradeEmails(bool value) async {
    await store.setBool(DISPUTE_TRADE_EMAILS, value);
  }

  bool getDisputeTradeEmails() {
    return store.getBool(DISPUTE_TRADE_EMAILS) ?? false;
  }

  Future<void> setDisputeTradeSMS(bool value) async {
    await store.setBool(DISPUTE_TRADE_SMS, value);
  }

  bool getDisputeTradeSMS() {
    return store.getBool(DISPUTE_TRADE_SMS) ?? false;
  }

  Future<void> setTradeStatusEmails(bool value) async {
    await store.setBool(TRADE_STATUS_EMAILS, value);
  }

  bool getTradeStatusEmails() {
    return store.getBool(TRADE_STATUS_EMAILS) ?? false;
  }

  Future<void> setTradeStatusSMS(bool value) async {
    await store.setBool(TRADE_STATUS_SMS, value);
  }

  bool getTradeStatusSMS() {
    return store.getBool(TRADE_STATUS_SMS) ?? false;
  }

  Future<void> setCreateStatusEmails(bool value) async {
    await store.setBool(CREATE_STATUS_EMAILS, value);
  }

  bool getCreateStatusEmails() {
    return store.getBool(CREATE_STATUS_EMAILS) ?? false;
  }

  Future<void> setCreateStatusSMS(bool value) async {
    await store.setBool(CREATE_STATUS_SMS, value);
  }

  bool getCreateStatusSMS() {
    return store.getBool(CREATE_STATUS_SMS) ?? false;
  }

  Future<void> setSendCoinEmails(bool value) async {
    await store.setBool(SEND_COIN_EMAILS, value);
  }

  bool getSendCoinEmails() {
    return store.getBool(SEND_COIN_EMAILS) ?? false;
  }

  Future<void> setSendCoinSMS(bool value) async {
    await store.setBool(SEND_COIN_SMS, value);
  }

  bool getSendCoinSMS() {
    return store.getBool(SEND_COIN_SMS) ?? false;
  }

  Future<void> setReceiveCoinEmails(bool value) async {
    await store.setBool(RECEIVE_COIN_EMAILS, value);
  }

  bool getReceiveCoinEmails() {
    return store.getBool(RECEIVE_COIN_EMAILS) ?? false;
  }

  Future<void> setReceiveCoinSMS(bool value) async {
    await store.setBool(RECEIVE_COIN_SMS, value);
  }

  bool getReceiveCoinSMS() {
    return store.getBool(RECEIVE_COIN_SMS) ?? false;
  }

  Future<void> setTransactionPinChangeEmails(bool value) async {
    await store.setBool(TRANSACTION_PIN_CHANGE_EMAILS, value);
  }

  bool getTransactionPinChangeEmails() {
    return store.getBool(TRANSACTION_PIN_CHANGE_EMAILS) ?? false;
  }

  Future<void> setDeviceChangeEmails(bool value) async {
    await store.setBool(DEVICE_CHANGE_EMAILS, value);
  }

  bool getDeviceChangeEmails() {
    return store.getBool(DEVICE_CHANGE_EMAILS) ?? false;
  }
}