
import 'package:flutter/material.dart';

class Select_Layout extends StatelessWidget {
  const Select_Layout({
    super.key, required this.mobaillayout, required this.tabletLayout, required this.desktoplayout,
  });
final WidgetBuilder mobaillayout,tabletLayout,desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraine){
        if (constraine.maxWidth <400){
          return mobaillayout(context);
        }else if (constraine.maxWidth <950 ){
          return tabletLayout(context);
        }else{
          return desktoplayout(context);
        }
      },
    );
  }
}