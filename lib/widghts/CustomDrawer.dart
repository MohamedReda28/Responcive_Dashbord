import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Models/DrawerModels.dart';
import '../cors/utils/app_color.dart';
import 'CustomDrawerItemListView.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});
  final List<DrawerModel> items= [
    const DrawerModel(title: '   D A S H B O A R E R', icon: Icons.home),
    const DrawerModel(title: '   S E T T I N G ', icon: Icons.settings),
    const DrawerModel(title: '   A B O U T', icon: Icons.info),
    const DrawerModel(title: '   L O G O U T', icon: Icons.logout),
    
  ];


  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:  AppColors.textSecondary,
      elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(FontAwesomeIcons.solidHeart,size: 50,),
          ),
          CustomDrawerItemListView(items: items)
        ],
      ),
    );
  }
}

