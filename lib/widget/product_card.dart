import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/produk');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/shoes3.jpg',
          width: 215,
          height: 150,
          fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal:20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Superbak 2',
                  style: secondystyle.copyWith(
                    fontSize: 12
                  ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Versi',
                    style: secondystyle.copyWith(
                      fontSize:18,
                      fontWeight: semibold
                    ),
                    overflow: TextOverflow.ellipsis
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$70,77',
                     style: secondystyle.copyWith(
                      fontSize:14,
                      fontWeight: medium
                     ),
    
                  )
              ],
            ),
          ),
        ]
        ),
      ),
    );
  }
}