class WalletAsset {
  String name;
  String symbol;
  double? change;
  double? usdValue;

  WalletAsset({
    required this.name,
    required this.symbol,
    this.change,
    this.usdValue,
  });
}
