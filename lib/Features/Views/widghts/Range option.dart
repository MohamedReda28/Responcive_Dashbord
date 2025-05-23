import 'package:flutter/material.dart';

import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_styles.dart';

class Renge_option extends StatelessWidget {
  const Renge_option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: AppColors.background,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1,color: AppColors.cardBackground),
            borderRadius: BorderRadius.circular(12),
          )
      ),
      child:  Row(
        children: [
           Text('Monthly',style: AppStyles.styleMeddium16(context),),
          const SizedBox(width: 18,),
          Transform.rotate(
            angle:-1.57079633,
            child:const Icon(Icons.arrow_back_ios_new,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
