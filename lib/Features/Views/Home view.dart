import 'package:flutter/material.dart';
import 'package:tested/Features/Views/widghts/Custom_drower.dart';
import 'package:tested/Features/Views/widghts/dash_bord_tapletlayout.dart';
import 'package:tested/Features/Views/widghts/dashbord%20Mobile%20Layout.dart';
import '../../cors/Widghts/adaptive layout wight.dart';
import '../../cors/utils/Size config.dart';
import '../../cors/utils/app_color.dart';
import 'dash_boardDisktop_layout.dart';

class Home_Padge extends StatelessWidget {
  const Home_Padge({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width <800 ?AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
       // leading: const Icon(Icons.menu),
      ):null,
      drawer:MediaQuery.sizeOf(context).width<SizeConfig.taplet? Custom_Drower():null,
      backgroundColor: AppColors.background,
      body: Select_Layout(
          mobaillayout: (context)=>const dashbordMobileLayout(),
          tabletLayout: (context)=>const DashBordTapletLayout(),
          desktoplayout: (context)=>const desktop_Layout(),
      ),
    );
  }
}
