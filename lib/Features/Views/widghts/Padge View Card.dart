import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'My Card Widght.dart';
class PadgeViewCard extends StatelessWidget {
  const PadgeViewCard({super.key, required this.pageController});
  final PageController pageController;
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) => My_Card()),
    );
  }
}