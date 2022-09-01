import 'package:flutter/material.dart';

import '../util/ColorResources.dart';

class PaymentTab extends StatefulWidget {
  const PaymentTab({Key? key}) : super(key: key);

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorResources.white,
    );
  }
}
