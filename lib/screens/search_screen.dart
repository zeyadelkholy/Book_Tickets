import 'dart:ui';

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SafeArea(
      child: Scaffold(
       backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          children: [
          Gap(40), // زي ال sizedbox بالظبط
          Text('What are\nyou looking for?',style: Styles.handlinestyle1.copyWith(fontSize: 35)),
          Gap(20),

          AppTicketTab(firstTab: "AirLine Tickets", secondTab: 'Hotels'),   // reuseable widget

          Gap(25),
         const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(15),
         const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18,horizontal: 15),
              decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('Find Tickets',style: Styles.textStyle.copyWith(color: Colors.white),),
              ),
            ),
            Gap(40),
            AppDoubleTextWidget(bigText: 'Upcoming flights', smaalText: 'View all'),
            Gap(15),

            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                   height: 425,
                   width: size.width*0.42,
                   padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     boxShadow:[
                       BoxShadow (
                         color: Colors.grey.shade200,
                         spreadRadius: 1,
                         blurRadius: 1
                        )
                     ] ,
                     color: Colors.white,
                   ),
                   child: Column(
                         children: [
                           Container(
                             height: 190,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(12),
                               image: DecorationImage(
                                 fit: BoxFit.cover,
                                   image: AssetImage('assets/sit.jpg'),
                               ),
                             ),
                           ),
                           Gap(12),
                           Text("20% discount on the early booking of this flight. Don't miss." ,
                           style: Styles.handlinestyle2,),
                         ],
                   ),
                 ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width*0.44,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFF3AB8BB),
                            borderRadius: BorderRadius.circular(18),
                          ),

                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Discount\nfor survey',style: Styles.handlinestyle2.copyWith(fontWeight: FontWeight.bold , color: Colors.white), ),
                              Gap(10),
                              Text('Take the survey about our services and get discount',style: Styles.handlinestyle2.copyWith(fontWeight: FontWeight.w500 , color: Colors.white , fontSize: 18), ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18,color: Color(0xFF189999)),
                              color: Colors.transparent,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(15),
                    Container(
                      width: size.width*0.44,
                      height: 210,
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffEC6545)
                      ),
                      child: Column(
                        children: [
                          Text('Take Love',style: Styles.handlinestyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                           ),
                          Gap(5),
                          RichText(text: const TextSpan(
                            children:[
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 25)
                              ),
                              TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 40)
                              ),

                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 25)
                              ),



                            ],
                           ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                ]
              ),


          ],
        ),
      ),
    );
  }
}
