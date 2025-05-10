import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Custom Item.dart';
import 'CustomItem2.dart';

class CustomLeftDesktop extends StatelessWidget {
  const CustomLeftDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Column(
        children: [
          Expanded(flex: 2, child: CustomItem()),
          SizedBox(
            height: 10,
          ),
          Expanded(child: CustonItem2()),
        ],
      ),
    );
  }
}
