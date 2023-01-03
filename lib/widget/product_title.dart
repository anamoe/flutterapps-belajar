
import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class productTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/produk');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
    
        ),
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey
        ),
        child: Row(
          
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: 
                Image.asset(
                  'assets/shoes2.jpg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              
            ),
            SizedBox(
              width:12,
            ),
            Expanded(child:
             Column(
              children: [
              Text(
                'Football',
                style: primarystyle.copyWith(
                  fontSize: 12
                )
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'predator',
                style: primarystyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$56.00',
                style: primarystyle.copyWith(
                  fontWeight: medium
                ),
              )
    
            ],
            )
            )
          ],
        ),
    
      ),
    );
   
  }
}