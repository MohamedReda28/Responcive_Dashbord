import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tested/Features/Views/widghts/Custom_drower.dart';
import 'package:tested/Features/Views/widghts/Middel%20Sction%20Desktop.dart';
import 'widghts/Left Section.dart';


class desktop_Layout extends StatelessWidget {
  const desktop_Layout({super.key});

  @override
  Widget build(BuildContext context) {

    return  const Row(
      children: [
        Expanded(
          flex:2,
            child: Custom_Drower(),
        ),
        SizedBox(width:20,),
         Expanded(
          flex: 5,
          child: Middel_Sction_Desktop(),
        ),
        SizedBox(width:20,),
        Expanded(
          flex: 3,
          child: Left_Section(),
        ),
          ],
        );
  }
}











