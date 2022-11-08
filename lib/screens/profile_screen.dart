import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/img_1.png'),
                  ),
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',style: Styles.handlinestyle1,),
                  Gap(2),
                  Text('New York',style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  ),
                  ),
                  Gap(8),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFFEF4F3)
                    ),
                    child: Row(

                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5),
                        Text('Premium status' , style: TextStyle(
                            color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ), ),
                        Gap(5),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Text('Edit',style :Styles.textStyle.copyWith(color: Styles.primaryColor,
                    fontWeight: FontWeight.w300),


                    ),
                  ),
                ],
              ),

            ],
          ),

          Gap(10),
          Divider(color: Colors.grey.shade400,),
          Gap(10),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border :Border.all(width: 18,color: Color(0xff264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                     Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award",
                          style: Styles.handlinestyle2.copyWith(color: Colors.white,
                          fontWeight: FontWeight.bold ),
                        ),

                        Text("You have 95 flights in a year",
                          style: Styles.handlinestyle2.copyWith(color: Colors.white.withOpacity(.9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500 ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text('Accumnlated miles',style: Styles.handlinestyle2,),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Gap(15),
                Text('192502',style: TextStyle(
                  fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w600
                 ),
                ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued',style: Styles.handlinestyle4.copyWith(fontSize: 16),),
                  Text('11 May 2020',style: Styles.handlinestyle4.copyWith(fontSize: 16),),
                ],
              ),
                Gap(4),
                Divider(color: Colors.grey.shade400,),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(FirstText: '23 041', secondtText: 'Miles', alignment: CrossAxisAlignment.start,isColor: false,),
                    AppColumnLayout(FirstText: 'Airline CO', secondtText: 'Recevied', alignment: CrossAxisAlignment.end,isColor: false,),
                  ],
                ),
                Divider(color: Colors.grey.shade400,),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(FirstText: '24', secondtText: 'Miles', alignment: CrossAxisAlignment.start,isColor: false,),
                    AppColumnLayout(FirstText: 'KFC', secondtText: 'Recevied', alignment: CrossAxisAlignment.end,isColor: false,),
                  ],
                ),
                Divider(color: Colors.grey.shade400,),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(FirstText: '541 35', secondtText: 'Miles', alignment: CrossAxisAlignment.start,isColor: false,),
                    AppColumnLayout(FirstText: 'USA', secondtText: 'Recevied', alignment: CrossAxisAlignment.end,isColor: false,),
                  ],
                ),
                Gap(16),
              ],
            ),
          ),
          Gap(50),
           Center(
             child: Text('How to get more miles',
             style: Styles.textStyle.copyWith(color: Styles.primaryColor,
             fontWeight: FontWeight.w500)
             ),
           ),

        ],
      ),

    );
  }
}
