import 'package:flutter/material.dart';

import '../../../cors/utils/app_color.dart';

class Custom_Dot_Indecator extends StatelessWidget {
  const Custom_Dot_Indecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          color: isActive ? AppColors.primary :  AppColors.textSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
      ),
    );
  }
}
