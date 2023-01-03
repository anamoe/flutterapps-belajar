import 'package:belajar1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
        
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12
      ),
      decoration: BoxDecoration(
        color: colorbutton,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height :60,
            decoration :BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: 
              AssetImage(
                'assets/shoes3.jpg'
              ))
            )
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children :[
                Text(
                  'superbak superbak superbak superbak ',
                  style: primarystyle.copyWith(
                    fontWeight: semibold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                  SizedBox(
              height: 2,
            ),
            Text(
                  'Rp. 345.000,00',
                  style: primarystyle,
                ),

                
              ]
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
                '2 Item',
                style: primarystyle.copyWith(
                  fontSize: 12
                ),
              ),

        ],

      ),

    );
  }
}