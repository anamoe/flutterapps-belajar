import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class CheckoutSuccessPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    AppBar header(){
      return AppBar(
        backgroundColor: colorbutton,
        centerTitle: true,
        title: Text(
          'Cekout Sukses'
        ),
        elevation: 0,
      );
    }

    Widget conten(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kamu berhasil melakukan transaksi',
              style: thirdystyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Nikmati produk lainnya',
              style: thirdystyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: 30
              ),
              child:TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/homes', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: colorbutton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'Order Produk Lainnya',
                  style: primarystyle.copyWith(

                  ),
                ),
              ) ,
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: 12
              ),
              child:TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'Lihat Orderanku',
                  style: primarystyle.copyWith(
                    
                  ),
                ),
              ) ,
            )


          ],
        ),
      );

    }
    return Scaffold(

backgroundColor: primarycolor,
appBar: header(),
body: conten(),
    );
  }
}