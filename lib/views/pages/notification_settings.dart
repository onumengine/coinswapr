import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/viewmodels/notif_settings_vm.dart';
import 'package:coinswapr/views/components/labeled_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  static const double _bottomMargin = 24;
  final TextStyle _subheaderStyle = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: ColorPalette.greyText,
  );
  final TextStyle _settingsLabelStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: ColorPalette.blackText,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryWhite,
        foregroundColor: ColorPalette.appbarText,
        elevation: 0,
        title: const Text("Notification Settings"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: ColorPalette.primaryBlue,
            ),
          ),
        ],
      ),
      body: Consumer<NotificationSettingsViewModel>(
        builder: (_, vm, child) => ListView(
          padding: const EdgeInsets.all(24),
          children: <Widget>[
            Text(
              "Trade Notifications",
              style: _subheaderStyle,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Open Trade",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.openTradeEmails,
                  onClick: vm.setOpenTradeEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.openTradeSMS,
                  onClick: vm.setOpenTradeSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Canceled Trade",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.canceledTradeEmails,
                  onClick: vm.setCanceledTradeEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.canceledTradeSMS,
                  onClick: vm.setCanceledTradeSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Released Trade",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.releaseTradeEmails,
                  onClick: vm.setReleaseTradeEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.releaseTradeSMS,
                  onClick: vm.setReleaseTradeSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Dispute Trade",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.disputeTradeEmails,
                  onClick: vm.setDisputeTradeEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.tradeStatusSMS,
                  onClick: vm.setDisputeTradeSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Trade Status",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.tradeStatusEmails,
                  onClick: vm.setTradeStatusEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.tradeStatusSMS,
                  onClick: vm.setTradeStatusSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Create Status",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.createStatusEmails,
                  onClick: vm.setCreateStatusEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.createStatusSMS,
                  onClick: vm.setCreateStatusSMS,
                ),
              ],
            ),
            const SizedBox(height: 36),
            Text(
              "Transaction Notifcations",
              style: _subheaderStyle,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Send Coin",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.sendCoinEmails,
                  onClick: vm.setSendCoinEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.sendCoinSMS,
                  onClick: vm.setSendCoinSMS,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Receive Coin",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.receiveCoinEmails,
                  onClick: vm.setReceiveCoinEmails,
                ),
                LabeledSwitch(
                  label: "SMS",
                  value: vm.receiveCoinSMS,
                  onClick: vm.setReceiveCoinEmails,
                ),
              ],
            ),
            const SizedBox(height: 36),
            Text(
              "Security Notifications",
              style: _subheaderStyle,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Transaction Pin Change",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.transactionPinChangeEmails,
                  onClick: vm.setTransactionPinChangeEmails,
                ),
              ],
            ),
            const SizedBox(
              height: _bottomMargin,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Canceled Trade",
                    style: _settingsLabelStyle,
                  ),
                ),
                LabeledSwitch(
                  label: "Email",
                  value: vm.deviceChange,
                  onClick: vm.setDeviceChangeEmails,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
