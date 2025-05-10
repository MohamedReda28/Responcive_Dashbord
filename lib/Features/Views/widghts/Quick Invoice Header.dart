import 'package:flutter/material.dart';

import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_styles.dart';

class Quick_Invoice_Header extends StatelessWidget {
  const Quick_Invoice_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text('Quick Invoice',style: AppStyles.styleSemiBold20(context),),
        const Expanded(child: SizedBox(),),
        Container(
            height: 60,
            width: 60,
            decoration:  const ShapeDecoration(
            color: AppColors.cardBackground,
            shape: OvalBorder(),
            ),child:const Center(child: Icon(Icons.add,color: AppColors.primary,
           ),
          ),
        ),


      ],
    );
  }
}
