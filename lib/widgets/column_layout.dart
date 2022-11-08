import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String FirstText ;
  final String secondtText ;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout({Key? key ,
    required this.FirstText ,
    required this.secondtText,
    required this.alignment,
     this.isColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
     // style: isColor==null? Styles.handlinestyle3.copyWith(color:Colors.white) : Styles.handlinestyle3,
      children: [
        Text(FirstText,style: isColor==null? Styles.handlinestyle3.copyWith(color:Colors.white) : Styles.handlinestyle3,),
        Gap(5),
        Text(secondtText,style: isColor==null? Styles.handlinestyle4.copyWith(color:Colors.white) : Styles.handlinestyle4,),

      ],
    );
  }
}
