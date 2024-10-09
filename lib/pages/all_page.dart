import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/container_class.dart';

class AllPage extends StatefulWidget {
  static const String id="all_page";
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  Containers containers=Containers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            containers,
            containers,
            containers,
            containers,
            containers,
            containers,
            containers,
            containers,
            containers,
          ],
        ),
      ),
    );
  }
}
