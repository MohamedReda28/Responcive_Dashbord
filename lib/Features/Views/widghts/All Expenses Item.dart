import 'package:flutter/material.dart';
import '../../../cors/Models/All Expenses Item Model.dart';
import 'InActive List Item.dart';


class All_Expenses_Item extends StatelessWidget {
  const All_Expenses_Item({super.key, required this.itemModel, required this.isSelected});
 final AllExpensesModel itemModel;
 final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected ? ActiveListItem(itemModel: itemModel,):InActiveListItem(itemModel: itemModel);
  }
}

