import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../cors/utils/app_color.dart';
import 'All Expenses header.dart';
import 'Display_allExpenses_List.dart';

class All_Expenses extends StatelessWidget {
  const All_Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )
      ),
      child: const Column(
        children: [
          All_Expenses_Heafer(text: 'All Expenses',),
          SizedBox(height: 16,),
          Display_allExpenses_List(),

        ],
      ),
    );
  }
}



