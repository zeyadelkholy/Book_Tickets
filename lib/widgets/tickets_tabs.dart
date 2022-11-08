import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTab({Key? key, required this.firstTab, required this.secondTab }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size =AppLayout.getsize(context);
    return   FittedBox(
      child: Container(
        child: Row(
          children: [

            Container(
              child: Center(child: Text(firstTab)),
              width: size.width*0.44,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),


            ),
            Container(
              child: Center(child: Text(secondTab)),
              width: size.width*0.44,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
