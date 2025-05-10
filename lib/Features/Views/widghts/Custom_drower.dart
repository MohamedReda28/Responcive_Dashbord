import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tested/Features/Views/widghts/user_info_list_tile.dart';
import '../../../cors/Models/Drower Item Mode.dart';
import '../../../cors/Models/User info model.dart';
import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_image.dart';
import 'Active_InActive DrowerItem.dart';
import 'drower_Item_listView.dart';

class Custom_Drower extends StatelessWidget {
  const Custom_Drower({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.sizeOf(context).width *.7,
      color: AppColors.background,
      child:  CustomScrollView(
        slivers: [
         SliverToBoxAdapter(child:  User_info_list_tile(
           userInfoModel: const UserInfoModel(
          leading: Assets.imagesAvtar2,
          title: 'Lekan Okeowo',
          subtitle: 'demo@gmail.com'),

           ),
         ),
          const SliverToBoxAdapter(child: SizedBox(height: 8,),),
          const drowerItemListView(),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height:20)),
                InActiveDrowerItem(droweritemmodel: DrowerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSetting2)
                ),
                InActiveDrowerItem(droweritemmodel: DrowerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout)
                ),
                SizedBox(height: 20,),
              ],
            ),
          )

         ],
        ),
    );
  }
}

