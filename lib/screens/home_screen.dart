import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Godd Morning', style: Styles.handlinestyle3),
                          const SizedBox(height: 5,),
                          Text('Book Tickets',style: Styles.handlinestyle1),
                        ],
                      ),
                  Container(
                    height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                         fit: BoxFit.fitHeight,
                          image: AssetImage('assets/img_1.png')
                           ),
                         ) ,
                       )

                    ],
                  ),

                  SizedBox(height: 25,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                    ),

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xffBfc205),),
                       Text("Search",
                         style: Styles.handlinestyle4,


                       )
                      ],
                    ),
                  ),

                  SizedBox(height: 40,),
                  AppDoubleTextWidget(bigText: 'Upcoming flights', smaalText: 'View all'),
                ],
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, isColor: true,)).toList()

              ),
            ),

            SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child : AppDoubleTextWidget(bigText: 'Hotels', smaalText: 'View all'),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child:  Row(
                  children:
                    hotellist.map((singlehotel) => HotelScreen(hotel:singlehotel)).toList()

                ),),


          ],
        ),

      ),
    );
  }
}
