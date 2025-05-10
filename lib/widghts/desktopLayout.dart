import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomDrawer.dart';
import 'Tablet Layout.dart';
import 'custom Left Desktop.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Expanded(
           child: CustomDrawer()),
       const Expanded(
         flex: 3,
           child: TabletLayout()),
       const Expanded(
           child: CustomLeftDesktop()),
     ],
    );
  }
}
