import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/DrawerModels.dart';
class CustomItemDrawer extends StatelessWidget {
   CustomItemDrawer({super.key, required this.drawerModel});
final DrawerModel drawerModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(drawerModel.icon),
        Text(drawerModel.title),
      ],
    );
  }
}
