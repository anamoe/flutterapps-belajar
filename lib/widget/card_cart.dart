import 'package:belajar1/theme.dart';
import 'package:flutter/cupertino.dart';

class CardCart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(
        top: 30,
      ) ,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: colorbutton,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: 
                AssetImage('assets/shoes2.jpg')
                )
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
                  'superbak',style: primarystyle.copyWith(
                   
                    fontWeight: semibold
                  ),
                ),
                Text(
                  'Rp. 450.000,00',
                  style: primarystyle,
                ),
            ],
            )
            ),
            Column(
              children: [
                Image.asset(
                  'assets/add.png',
                  width: 36,
                ),
                SizedBox(
                  height: 5,
                ),
                 Text(
                  '2',
                  style: primarystyle,
                ),
                 SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/min.png',
                  width: 36,
                ),
              ],
            )
          ],
        ),
         SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/remove.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'hapus',
                      style: redstyle.copyWith(
                        fontSize: 14,
                        fontWeight: light
                      ),
                    )
                  ],
                )


      ]),
    );
  }
}