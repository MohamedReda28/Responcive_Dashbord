import 'package:flutter/material.dart';

import '../Models/DrawerModels.dart';
import 'CustomItem in Drawer.dart';
class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.items,
  });

  final List<DrawerModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,

        itemCount: items.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
            child: CustomItemDrawer(drawerModel: items[index],),
          );
        }
    );
  }
}
