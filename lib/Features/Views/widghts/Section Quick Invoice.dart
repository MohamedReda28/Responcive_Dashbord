import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../cors/utils/app_color.dart';
import 'Latest TranSaction.dart';
import 'Quick Invoice Form.dart';
import 'Quick Invoice Header.dart';

class Section_Quick_Invoice extends StatelessWidget {
  const Section_Quick_Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: AppColors.background,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1,color:AppColors.cardBackground),
            borderRadius: BorderRadius.circular(12),
          ),
      ),
      child:  const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Quick_Invoice_Header(),
            SizedBox(height: 14,),
            LatestTranSaction(),
            Divider(height: 48,color: AppColors.cardBackground,),
            Quick_Invoice_Form(),


          ],
        ),
      ),
    );
  }
}


