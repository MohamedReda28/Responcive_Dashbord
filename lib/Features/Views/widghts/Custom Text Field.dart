import 'package:flutter/material.dart';

import '../../../cors/utils/app_color.dart';
import '../../../cors/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
final String hintText;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: AppColors.textSecondary ),
        fillColor: AppColors.background,
        filled: true,
        border: buildBorder(),
        enabledBorder:  buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.background,

        )
      );
  }
}
