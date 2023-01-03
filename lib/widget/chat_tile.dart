import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class  ChatTile extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, '/detail-chat');
    },
     child: Container(
      margin: EdgeInsets.only(top: 33),
      child: Column(children: [
        Row(
          children: [
            Image.asset(
              'assets/shoes.jpg',
              width: 54,
   
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'sh',
                    style: thirdystyle.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'GOOD DAKJDKADA qwqwqwq...22424242..',
                    style:thirdystyle.copyWith(
                      fontWeight: light
                    ) ,
                    overflow: TextOverflow.ellipsis,
                  ),
                
                ],
            
              ),
              
              
            ),
              Text(
                    'Now',
                    style: thirdystyle.copyWith(
                      fontSize: 10
                    ),
                  )
          ],
        ),
        SizedBox(
          height: 12,
   
        ),
        Divider(
          thickness :1,
          color:colorbutton ,
        )
      ]
      ),
     ),
   );
  }
}