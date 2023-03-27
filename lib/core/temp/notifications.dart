import 'package:coinswapr/core/utilities/notification_type.dart';
import 'package:coinswapr/models/notification.dart';

List<NotificationModel> notifications = [
  NotificationModel(
    title: "You received 0.05XRP ~ USD 1,000 from this wallet address fdsfl....kioen...dsfea Your XRP wallet as at 02:32:00(GMT) is 0.1XRP ~ \$5,000",
    date: DateTime(2023, 2, 13),
    type: NotificationType.inflow,
  ),
  NotificationModel(
    title: "You sent 5BTC ~ USD 24M from this wallet address df0es....4mfkf...5fn3n Your BTC wallet as at 13:02:00(GMT) is 6BTC ~ \$5,000",
    date: DateTime(2023, 2, 12),
    type: NotificationType.outflow,
  ),
  NotificationModel(
    title: "Price Alert BTC is currently above \$4,000",
    date: DateTime(2023, 2, 9),
    type: NotificationType.priceAlert,
  ),
  NotificationModel(
    title: "Price Alert BTC is currently below \$2,000",
    date: DateTime(2023, 2, 9),
    type: NotificationType.priceAlert,
  ),
  NotificationModel(
    title: "Price Alert BTC is currently equal to -20%",
    date: DateTime(2023, 2, 9),
    type: NotificationType.priceAlert,
  ),
  NotificationModel(
    title: "This is a custom notification to relay information",
    date: DateTime(2020, 2, 8),
    type: NotificationType.informative,
  ),
  NotificationModel(
    title: "This is a custom notification to relay warning information",
    date: DateTime(2020, 2, 7),
    type: NotificationType.warning,
  ),
  NotificationModel(
    title: "This is a custom notification to relay dangerous information",
    date: DateTime(2020, 2, 6),
    type: NotificationType.error,
  ),
];
