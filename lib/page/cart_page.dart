import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/card_cart.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
 
  Widget conten(){

    return ListView(
      padding:  EdgeInsets.symmetric(
        horizontal: 30
      ),
      children: [
        CardCart(),
         CardCart(),
          CardCart(),
          CardCart(),
          CardCart(),
      ],

    );

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        backgroundColor: third,
        centerTitle: true,
        title: Text(
          'Keranjangmu',
        ),
        elevation: 0,
      ),
      body: conten(),
      bottomNavigationBar:
      Container(
      height: 175,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
               'Subtotal',
                style: thirdystyle,
              ),
              Text(
                'Rp. 345.00,00',
                style: thirdystyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                )
              )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            thickness: 0.3,
            color: greencolor,

          ),
           SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
              horizontal: 30
            ),
            
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(
                  context, '/checkout');
              },
              style: TextButton.styleFrom(
                backgroundColor: third,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )

              ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  'Lanjutan Checkout',
                  style: primarystyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: primarycolor,
                )
              ]
              ),
            ),
            
          )
        ],
      ),
    ) ,
    //   body: Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Image.asset(
    //         'assets/empty_cart.png',
    //         width: 80,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         'gaenek isine ',
    //         style: thirdystyle.copyWith(fontSize: 36, fontWeight: medium),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         'Temukan sepatu impianmu ea..',
    //         style: thirdystyle.copyWith(),
    //       ),
    //       Container(
    //         width: 154,
    //         height: 44,
    //         margin: EdgeInsets.only(top: 20),
    //         child: TextButton(
    //           onPressed: (){
    //             Navigator.pop(context);
    //           },
              
    //           style: TextButton.styleFrom(
    //             backgroundColor: third,
    //             shape: RoundedRectangleBorder(borderRadius:
    //             BorderRadius.circular(12))
    //           ),
    //             child: Text(
    //           'Cari Di Toko',
    //           style: primarystyle.copyWith(
    //             fontSize: 16, 
    //             fontWeight: medium),
    //         ),
    //         ),
            
    //       )
    //     ],
    //   ),
    // )


    );
  }
}
