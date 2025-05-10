import 'package:flutter/material.dart';

import '../../../cors/Models/Tranction Model.dart';
import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_styles.dart';


class TArnsction_Custom extends StatelessWidget {
  const TArnsction_Custom({super.key, required this.tranctionModel});
 final TranctionModel tranctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardBackground,//Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),child: ListTile(
      title: Text(tranctionModel.title,style: AppStyles.styleSemiBold16(context),),
      subtitle: Text(tranctionModel.date,style: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA)),),
      trailing: Text(tranctionModel.amount,
        style: AppStyles.styleSemiBold20(context).copyWith(
            color:tranctionModel.isWithdrwer ?  AppColors.danger:AppColors.success
        ),
      ),
    ),
    );
  }
}
