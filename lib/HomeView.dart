import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tested/widghts/Mobill_Layout.dart';
import 'package:tested/widghts/Select%20Layout.dart';
import 'package:tested/widghts/Tablet%20Layout.dart';
import 'package:tested/widghts/desktopLayout.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Select_Layout(
        mobaillayout:(context)=> const Mobill_layout(),
        tabletLayout: (context)=>const TabletLayout(),
        desktoplayout:(context)=> const DesktopLayout(),
      ),
    );
  }
}



