import 'package:flutter/material.dart';
class CustonItem2 extends StatelessWidget {
  const CustonItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffECECEC),
      ),
    );
  }
}