import 'package:flutter/material.dart';

import 'Custom Sliver List.dart';
import 'CustomList.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 12,),),
        CustomList(),
        CustomSliverList(),

      ],
    );
  }
}
