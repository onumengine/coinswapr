import 'package:coinswapr/models/price_alert.dart';

List<PriceAlertGroup> priceAlertGroups = [
  PriceAlertGroup(
    coinSymbol: 'btc',
    coinName: 'Bitcoin',
    alerts: <PriceAlert>[
      PriceAlert(
        description: 'Below \$2000',
        dateCreated: DateTime(2020, 12, 25),
        price: 2000,
        type: AlertType.below,
        enabled: true,
      ),
      PriceAlert(
        description: 'Equal +25%',
        dateCreated: DateTime(2020, 12, 25),
        price: 2000 + ((25/100) * 2000),
        type: AlertType.equal,
        enabled: true,
      ),
      PriceAlert(
        description: 'Above \$12000',
        dateCreated: DateTime(2020, 12, 25),
        price: 12000,
        type: AlertType.above,
        enabled: true,
      ),
    ],
  ),
  PriceAlertGroup(
    coinSymbol: 'usdt',
    coinName: 'Tether',
    alerts: <PriceAlert>[
      PriceAlert(
        description: 'Below \$2000',
        dateCreated: DateTime(2020, 12, 25),
        price: 2000,
        type: AlertType.below,
        enabled: true,
      ),
      PriceAlert(
        description: 'Below \$5000',
        dateCreated: DateTime(2020, 12, 25),
        price: 5000,
        type: AlertType.below,
        enabled: true,
      ),
      PriceAlert(
        description: 'Equal -10%',
        dateCreated: DateTime(2020, 12, 25),
        price: 12000 + ((-20/100) * 12000),
        type: AlertType.equal,
        enabled: true,
      ),
    ],
  ),
  PriceAlertGroup(
    coinSymbol: 'eth',
    coinName: 'Ethereum',
    alerts: <PriceAlert>[
      PriceAlert(
        description: 'Below \$2000',
        dateCreated: DateTime(2020, 12, 25),
        price: 2000,
        type: AlertType.below,
        enabled: true,
      ),
      PriceAlert(
        description: 'Below \$2000',
        dateCreated: DateTime(2020, 12, 25),
        price: 2000,
        type: AlertType.below,
        enabled: true,
      ),
      PriceAlert(
        description: 'Above \$12000',
        dateCreated: DateTime(2020, 12, 25),
        price: 12000,
        type: AlertType.above,
        enabled: true,
      ),
    ],
  ),
];
