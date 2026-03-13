import 'package:flutter/material.dart';

class Menulateral extends StatefulWidget {
  const Menulateral({super.key});

  @override
  State<Menulateral> createState() => _MenulateralState();
}

class _MenulateralState extends State<Menulateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(),
        ],
      ),
    );
  }
}
