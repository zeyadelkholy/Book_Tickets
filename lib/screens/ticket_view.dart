import 'dart:ui';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket , required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getsize(context);

    return SizedBox(
      width: size.width*0.85,
      height:AppLayout.getHeight(200), // لازم يكون الارتفاع = 169
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16),),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* الجزء الازرق من التذكره */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))
              ),
              padding:  EdgeInsets.all(16),
              child: Column(
               children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                      style: isColor==null? Styles.handlinestyle4.copyWith(color: Colors.white):Styles.handlinestyle3),
                    Expanded(child: Container()
                    ),
                    ThickContainer(isColor: true,),

                    // الخط اللي بين الدايرتين في صفحه التذاكر
                    Expanded(child:
                     Stack(
                      children:[
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                              print("The Width is ${constraints.constrainWidth()}");

                              return  Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(),
                                        (index) => SizedBox( height: 1,width: 3,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor==null? Colors.white : Colors.grey.shade300
                                        ),
                                      ),

                                    )
                                ),
                              );
                            },

                          ),
                        ),
                        Center(
                            child:
                            Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor ==null?  Colors.white: Color(0xFF8ACCF7)),)),
                      ],
                    )
                    ),

                    ThickContainer(isColor: true,),
                    Expanded(child: Container()),
                    Text(ticket['to']['code'],style: isColor==null? Styles.handlinestyle4.copyWith(color: Colors.white) : Styles.handlinestyle3)
                      ],
                    ),
                const SizedBox(height: 3,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                       width: 100,child: Text(ticket['from']['name'],style: isColor==null? Styles.handlinestyle4.copyWith(color: Colors.white) : Styles.handlinestyle4),
                     ),
                     Text(ticket["flying_time"],style: isColor==null? Styles.handlinestyle3.copyWith(color: Colors.white) : Styles.handlinestyle4),
                     SizedBox(
                       width: 100,child: Text(ticket['to']['name'],textAlign:TextAlign.end,style: isColor==null? Styles.handlinestyle4.copyWith(color: Colors.white):  Styles.handlinestyle4),
                     ),
                   ],
                 ),
                  ],
                ),
             ),


            /* الجزء البرتقاني من التذكره اللي فالنص */
            Container(
              color: isColor==null? Styles.orangeColor : Colors.white, //const Color(0xFFF37B67),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200 :Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(
                      builder: (BuildContext context , BoxConstraints constraints){
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children:
                            List.generate((constraints.constrainWidth().floor()/15).floor(),
                            (index) => SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(

                                ),
                              ),
                            ))

                        );
                      }
                    ),
                  ),),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200 :Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* الجزء البرتقاني اللي فوق */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                bottomRight: Radius.circular(isColor==null?21:0))
              ),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['date'],style: isColor==null? Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle3 ,),
                          Gap(5),
                          Text('Date',style: isColor==null?  Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle4 ,),
                        ],
                      ),



                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],style: isColor==null? Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle3 ,),
                          Gap(5),
                          Text('Departure time',style: isColor==null?  Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle4 ,),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),style: isColor==null?  Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle3 ,),
                          Gap(5),
                          Text('Number',style: isColor==null? Styles.handlinestyle3.copyWith(color: Colors.white):Styles.handlinestyle4 ,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
