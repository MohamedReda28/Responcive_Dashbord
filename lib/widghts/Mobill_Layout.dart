import 'package:flutter/material.dart';

import 'Custom Sliver List.dart';
import 'SliverGridview.dart';

class Mobill_layout extends StatelessWidget {
  const Mobill_layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 12,),),
        SliverGridView(),
        CustomSliverList(),

      ],
    );
  }
}
