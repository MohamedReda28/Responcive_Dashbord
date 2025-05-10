import 'package:flutter/material.dart';

import 'CustomItem2.dart';
class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
        itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.only(top: 16),
              child: CustonItem2(),
        );

        }
    );
  }
}

