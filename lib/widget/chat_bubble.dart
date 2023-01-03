import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
 final String text;
final bool isSender;
final bool hasProduct;

const ChatBubble({this.isSender= false,this.text='',this.hasProduct=false});
  @override
  Widget build(BuildContext context) {


    Widget produkreview(){
      return Container(
        width:230 ,
        height: 155,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
         decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isSender ? 12 :0),
                 topRight: Radius.circular(isSender ? 0 :12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: isSender ? Color.fromARGB(255, 103, 164, 135) : Color.fromARGB(255, 74, 97, 138)
            ),
            child: Column(
              children: [
              Row(
                children: [
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/shoes.jpg',
                      width: 70,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: Column(children: [
                    Text(
                      'Superbak',
                      style: primarystyle,
                    ),
                    SizedBox(height: 4,),
                    Text('\$ 8.77',style: primarystyle.copyWith(
                      fontWeight: medium
                    ),)
                  ],))
                ],
              ),
              SizedBox(height: 12,),
              Row(            
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [          
                OutlinedButton(               
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primarycolor
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                 child: Text(
                  'Add cart',
                  style: primarystyle,
                 ),
                 ),
                 SizedBox(
                  width: 8,
                
                 ),
                 TextButton(onPressed: (){}, 
                 style: TextButton.styleFrom(
                  backgroundColor: primarycolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                 ),
                 child: Text(
                  'Buy Now',
                  style:GoogleFonts.poppins(
                    color :colorbutton
                  ),
                 ))
              ],)
            ]
            ),
      );
    }
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,

        children: [
          hasProduct ? produkreview(): SizedBox(),
          Row(
            mainAxisAlignment: isSender ? MainAxisAlignment.end :MainAxisAlignment.start,
            children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth:MediaQuery.of(context).size.width*0.6 ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 :0),
                     topRight: Radius.circular(isSender ? 0 :12),
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                color: isSender ? Color.fromARGB(255, 103, 164, 135) : Color.fromARGB(255, 74, 97, 138)
                ),
                child:  Text(
                  text,
                  style: primarystyle,
                )
                ,
              ),
            )
          ],),
        ],
      ),

    );
    
  }
}