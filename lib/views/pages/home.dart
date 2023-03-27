import 'package:coinswapr/core/navigation/routenames.dart';
import 'package:coinswapr/core/theming/color_palette.dart';
import 'package:coinswapr/views/components/history.dart';
import 'package:coinswapr/views/components/peer_to_peer.dart';
import 'package:coinswapr/views/components/portfolio.dart';
import 'package:coinswapr/views/components/price_alerts.dart';
import 'package:coinswapr/views/components/wallet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavbarIndex = 0;
  final subComponents = <Widget>[
    Portfolio(
      key: UniqueKey(),
    ),
    Wallet(
      key: UniqueKey(),
    ),
    PeerToPeer(
      key: UniqueKey(),
    ),
    History(
      key: UniqueKey(),
    ),
    PriceAlerts(
      key: UniqueKey(),
    ),
  ];

  void showNotifications(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }

  void _setCurrentNavbarIndex(int newIndex) {
    setState(() {
      _currentNavbarIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: ColorPalette.appbarText,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text("Welcome home, Pete"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteNames.notifications);
            },
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {
              showNotifications("No dashboard UI yet");
            },
            icon: const Icon(Icons.dashboard_outlined),
          ),
        ],
      ),
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: subComponents[_currentNavbarIndex],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: ColorPalette.primaryWhite
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavbarIndex,
          onTap: _setCurrentNavbarIndex,
          selectedItemColor: ColorPalette.primaryBlue,
          unselectedItemColor: ColorPalette.bottomNavbarText,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                _currentNavbarIndex == 0 ? Icons.home : Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentNavbarIndex == 1
                    ? Icons.account_balance_wallet
                    : Icons.account_balance_wallet_outlined,
              ),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentNavbarIndex == 2 ? Icons.people : Icons.people_outlined,
              ),
              label: "P2P",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentNavbarIndex == 3 ? Icons.history : Icons.history_outlined,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _currentNavbarIndex == 4 ? Icons.timer : Icons.timer_outlined,
              ),
              label: "Price Alerts",
            ),
          ],
        ),
      ),
    );
  }
}
