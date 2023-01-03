import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/chat_bubble.dart';
import 'package:flutter/material.dart';

class DetailChat extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Widget productRevie(){
      return Container(
        width: 225,
        height:74 ,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
           color:  Color.fromARGB(255, 74, 97, 138),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primarycolor
          )

        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ClipRRect(
            
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/shoes2.jpg',
              width: 54,
            )
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'VISIO',
                  style: primarystyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$ 78.00',
                  style:primarystyle.copyWith(
                    fontWeight:medium 
                  ) ,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/buttonx.png',
            width: 22,
          )
        ]
        ),
      );
    }

    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            productRevie(),
            Row(
              children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,                 
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child:TextFormField(
                      decoration:InputDecoration(
                        hintText: 'Type message..',
                        hintStyle: subtitlestyle
                        
                      ),
                    ) ,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/send.png',
                width: 45,
              )
            ]),
          ],
        ),
        
      );
    }

    Widget conten(){
      return ListView(
        padding: EdgeInsets.symmetric(
          
          horizontal: 30,
          
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'yoki masi ada ges',
            hasProduct: true,
            ),
           ChatBubble(
            isSender: false,
            text: 'malam, eneke ukuran pas.................',)
        ],

      );
    }


    return Scaffold(
      backgroundColor: primarycolor,
      appBar:   PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: false,
          title: Row(
            children: [
            Image.asset(
              'assets/shoes3.jpg',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Admin',
                  style: primarystyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),
                ),
                Text(
                  'Online',style: primarystyle.copyWith(
                    fontWeight: light,
                     fontSize: 12
                  ),
                )
              ],
            )
          ]
          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
      body: conten(),
      

    );
  }
}