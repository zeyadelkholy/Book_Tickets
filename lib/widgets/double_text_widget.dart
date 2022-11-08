import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smaalText;
  const AppDoubleTextWidget({Key? key, required this.bigText , required this.smaalText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,style: Styles.handlinestyle2,),
        InkWell(
            onTap: (){
              print('You are tapped');
            },
            child: Text(smaalText,style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
      ],
    );

  }
}
