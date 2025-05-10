import 'package:flutter/material.dart';

import 'Custom Item.dart';

class SliverGridView extends StatelessWidget {
  const SliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context,index){
          return const CustomItem();
        }
    );
  }
}



