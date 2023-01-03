

import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/whistlist_card.dart';
import 'package:flutter/material.dart';

class Transaksi  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor:colorbutton,
        centerTitle: true,
        title: Text(
          'Favorite'
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget EmtpyList(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: primarycolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(
              'assets/whistlist.png',
              width: 74,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'raenek sepatu seng sreg di senengi ?',
              style: thirdystyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
              
            ),
             Text(
              'ayok golekono',
              style: thirdystyle.copyWith(
                fontSize: 14,
                fontWeight: medium
              ),
              
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 44,
              child: TextButton(
                onPressed: (){},
                  style:TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24
                    ),
                    backgroundColor: colorbutton2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                child: Text(
                  'Explore ke Toko',
                  style: primarystyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                 
                  
                 
                ),
              ),
            )
          ],
          ),
        )
        );
    }
    
    Widget conten(){
      return Expanded(child: 
      Container(
        color: primarycolor,
        child: ListView(
          children: [
            WhistlistCrad(),
              WhistlistCrad(),
                WhistlistCrad()
          ],
        ),
      )
      );
    }
    return Column(
     children: [
      header(),
      conten(),
      // EmtpyList()
     ],

    );
  }
}