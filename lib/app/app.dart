import 'package:flutter/material.dart';

class BuyApp extends StatefulWidget {
  BuyApp._internal();

  static final _instance = BuyApp._internal();

  factory BuyApp() => _instance;

  @override
  State<BuyApp> createState() => _BuyAppState();
}

class _BuyAppState extends State<BuyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
