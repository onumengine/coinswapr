import 'package:flutter/material.dart';

class PeerToPeer extends StatefulWidget {
  const PeerToPeer({Key? key}) : super(key: key);

  @override
  State<PeerToPeer> createState() => _PeerToPeerState();
}

class _PeerToPeerState extends State<PeerToPeer> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("P2P"),
    );
  }
}
