import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../cors/Models/User info model.dart';
import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_styles.dart';

class User_info_list_tile extends StatelessWidget {
    User_info_list_tile({super.key, required this.userInfoModel,});

 final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  AppColors.background,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.leading),
        title: Text(
          userInfoModel.title,
            style:AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(userInfoModel.subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
