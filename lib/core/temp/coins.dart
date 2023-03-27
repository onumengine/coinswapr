class Coin {
  String symbol;
  String name;
  double amount;
  double value;
  double change;

  Coin({
    required this.symbol,
    required this.name,
    required this.amount,
    required this.value,
    required this.change,
  });
}

List<Coin> coins = [
  Coin(
    symbol: 'btc',
    name: "Bitcoin",
    amount: 0.00054,
    value: 5320,
    change: 25,
  ),
  Coin(
    symbol: 'eth',
    name: "Ethereum",
    amount: 0.00054,
    value: 5320,
    change: -5,
  ),
  Coin(
    symbol: 'usdt',
    name: "Tether",
    amount: 0.00054,
    value: 5320,
    change: 25,
  ),
  Coin(
    symbol: 'xrp',
    name: "Ripple",
    amount: 0.00054,
    value: 5320,
    change: 25,
  ),
  Coin(
    symbol: 'ltc',
    name: "Litecoin",
    amount: 0.00054,
    value: 5320,
    change: -20,
  ),
];
