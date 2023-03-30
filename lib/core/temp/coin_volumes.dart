import 'dart:ui';

import 'package:coinswapr/models/coin_volume.dart';

final List<CoinVolume> coinVolumes = [
  const CoinVolume(
    percentage: 20,
    assetName: 'Bitcoin',
    assetSymbol: 'btc',
    color: Color(0xFFEE8A10),
  ),
  const CoinVolume(
    percentage: 20,
    assetName: 'Tether',
    assetSymbol: 'usdt',
    color: Color(0xFF50AF95),
  ),
  const CoinVolume(
    percentage: 20,
    assetName: 'Ethereum',
    assetSymbol: 'eth',
    color: Color(0xFF8C8C8C),
  ),
  const CoinVolume(
    percentage: 20,
    assetName: 'Wakanda',
    assetSymbol: 'INU',
    color: Color(0xFFFF007A),
  ),
];
