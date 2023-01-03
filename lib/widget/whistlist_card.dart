import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class WhistlistCrad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorbutton
      ),
      child: Row(
        children: [
        ClipRRect(
          borderRadius :BorderRadius.circular(12),
          child: Image.asset(
            'assets/shoes.jpg',
            width: 60,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sepatu Superbak',
                style: primarystyle.copyWith(
                  fontWeight: semibold,
                ),
              ),
              Text(
                'Rp. 125.000,00',
                style: primarystyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
        Image.asset('assets/whistlist.png',width: 34,)
      ]),

    );
  }
}