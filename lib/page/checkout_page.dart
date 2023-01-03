import 'dart:ffi';

import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/checkout_card.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {



    Widget conten(){
      return ListView(
        
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [ 
          Container(
            
            child: Column(
      
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'List Item',
                  style: thirdystyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                  )
                ),
                CheckoutCard(),
                 CheckoutCard(),
                  CheckoutCard(),
              ],
            ),
          ),
          //address
          Container(
            margin: EdgeInsets.only(
              top: 30
            ),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorbutton,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: [
              Text(
                'Address',
                style: primarystyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
               
              ),
               SizedBox(
                height:12 ,
               ),
               Row(children: [
                Column(
                  children: [
                    Image.asset('assets/store.jpg',
                    width: 40,),
                    SizedBox(height: 20,),
                     Image.asset('assets/maps.png',
                    width: 40,)
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Toko',
                      style: primarystyle.copyWith(
                        fontSize: 12,
                        fontWeight: light
                      ),
                    ),
                    Text(
                      'SUPERBAK STORE',
                      style: primarystyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium
                      ),
                    ),
                      SizedBox(
                  height :30,
                ),
                 Text(
                      'Alamat Anda',
                      style: primarystyle.copyWith(
                        fontSize: 12,
                        fontWeight: light
                      ),
                    ),
                    Text(
                      'Banyuwangi',
                      style: primarystyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium
                      ),
                    ),

                  ],
                )
               ],
               )
            ]
            ),

          ),
          Container(
            margin : EdgeInsets.only(
              top: 30,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colorbutton,
              borderRadius: BorderRadius.circular(12),
            ),
            child : Column(
              children: [
              Text(
                'Payment ',style: primarystyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jumlah Produk',
                    style: primarystyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                   Text(
                    '2 Item',
                    style: primarystyle.copyWith(
                      fontWeight: medium
                    ),
                  ),

                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harga Produk',
                    style: primarystyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                   Text(
                    'Rp. 347.000,00',
                    style: primarystyle.copyWith(
                      fontWeight: medium
                    ),
                  ),

                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harga',
                    style: primarystyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                   Text(
                    'gratis',
                    style: primarystyle.copyWith(
                      fontWeight: medium
                    ),
                  ),

                ],
              ),SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 0.5,
                color: Colors.greenAccent,

              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: primarystyle.copyWith(
                      fontWeight: bold
                    )
                  ),
                  Text(
                    'Rp. 2.234.000,00',
                    style: primarystyle.copyWith(
                      fontWeight: bold
                    )
                  )
                ],
              )
            ],
            )
          ),
          //cekout button
          SizedBox(
            height: 30,
          ),
           Divider(
                thickness: 0.5,
                color: Colors.greenAccent,

              ),
              Container(
                height: 50,
                width:double.infinity,
               
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil
                    (context, '/checkout-success', (route) => false);

                  },
                  style: TextButton.styleFrom(
                    backgroundColor: colorbutton,
                    shape: RoundedRectangleBorder(borderRadius: 
                    BorderRadius.circular(12))
                  ),
                  child: Text('Checkout',style: primarystyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold
                  ),),
                ),
              )

        ],

      );
    }
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        backgroundColor: colorbutton,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail Chekcout',
        ),
      ),
      body: conten()

    );
}
}