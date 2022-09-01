import 'package:flutter/material.dart';

import '../util/ColorResources.dart';

class MoreTab extends StatefulWidget {
  const MoreTab({Key? key}) : super(key: key);

  @override
  State<MoreTab> createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorResources.white,
    );
  }
}
