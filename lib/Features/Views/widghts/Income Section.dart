import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../cors/Models/Income Model.dart';
import '../../../cors/utils/app_color.dart';
import 'All Expenses header.dart';
import 'CustomI ncome Range.dart';
import 'Income Chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),child:   const Column(
      children: [
        All_Expenses_Heafer(text: 'Income'),
        SizedBox(height: 16,),
        Expanded(
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Expanded(child: Income_Chart()),
             Expanded(
               flex: 2,
                 child: ListViewIncomeRang()),

           ],
         ),
       )

       ],
     ),
    );
  }
}


class ListViewIncomeRang extends StatelessWidget {
  const ListViewIncomeRang({super.key});
  static const List<IncomeModel> items= [
    IncomeModel(color:AppColors.secondary, title: 'Design service', range: '40%'),
    IncomeModel(color: AppColors.primary, title: 'Design product', range: '25%'),
    IncomeModel(color: AppColors.primary, title: 'Product royalti', range: '20%'),
    IncomeModel(color: AppColors.cardBackground, title: 'Other', range: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
        itemBuilder: (context,index){
        return CustomIncomeRange(incomeModel: items[index]);
        }
    );
  }
}
