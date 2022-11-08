import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/tickets_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {

  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20) , horizontal: AppLayout.getHeight(20)),
              children: [
                Gap(40),
                Text('Tickets', style: Styles.handlinestyle1,),
                Gap(20),
                AppTicketTab(
                    firstTab:'Upcoming', secondTab: 'Previous'),
                 Gap(20),
                Container(
                  padding: EdgeInsets.only(left:AppLayout.getHeight(15) ),
                  child: TicketView(ticket: ticketList[0], isColor: true,),
                ),


                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                     children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:   [
                         AppColumnLayout(
                           FirstText: 'Flutter DB',
                           secondtText: 'Passsenger', alignment: CrossAxisAlignment.start,
                           ),

                          AppColumnLayout(
                            FirstText: '5942 36871',
                            secondtText: 'Passport', alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),


                    ],
                  ),
                ),

              ],
            )

          ],
        ),

      ),
    );
  }
}
