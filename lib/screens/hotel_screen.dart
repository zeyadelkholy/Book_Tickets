import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key , required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getsize(context);

    return Container(
      width: size.width*0.6,
      height: 360,
      padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 17,),
      margin: const EdgeInsets.only(right: 17 ,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/${hotel['image']}'
                )
              )
            ),
          ),

          SizedBox(height: 10,),
          Text(hotel['place'],style: Styles.handlinestyle2.copyWith(color: Styles.pageColor),),
          SizedBox(height: 5,),
          Text(hotel['destination'],style: Styles.handlinestyle3.copyWith(color: Colors.white),),
          SizedBox(height: 8,),
          Text('\$${hotel['price']}/night',style: Styles.handlinestyle1.copyWith(color: Styles.pageColor),),
        ],
      ),
    );
  }
}
