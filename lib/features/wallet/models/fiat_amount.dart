class FiatAmount {
  final double usdAmount;

  FiatAmount._(this.usdAmount);

  factory FiatAmount.usd(double amount) {
    return FiatAmount._(amount);
  }

  factory FiatAmount.ngn(double amount, double rate) {
    return FiatAmount._(amount * rate);
  }
}