import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/product_card.dart';
import 'package:belajar1/widget/product_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo Anam',
                      style: thirdystyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/profile.png',
                    ))),
              )
            ],
          ));
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: fourcolor,
              ),
              child: Text('Semua'),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
                color: transaparan,
              ),
              child: Text(
                'Hari  ini',
                style: subtitlestyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
                color: transaparan,
              ),
              child: Text(
                'Minggu ini',
                style: subtitlestyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
                color: transaparan,
              ),
              child: Text(
                'Bulan ini',
                style: subtitlestyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
                color: transaparan,
              ),
              child: Text(
                'Tahun ini',
                style: subtitlestyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            )
          ]),
        ),
      );
    }

    Widget popularproducttitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Text(
          'Popular Products',
          style: thirdystyle.copyWith(fontSize: 22, fontWeight: semibold),
        ),
      );
    }

    Widget newarrivaltitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Text(
          'New Arrival',
          style: thirdystyle.copyWith(fontSize: 22, fontWeight: semibold),
        ),
      );
    }

    Widget popularproducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(width: 30),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          ]),
        ),
      );
    }

    Widget newAarrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14
        ),
        child: Column(
          
            children: [
              productTile(),
              productTile(),
              productTile(),
              productTile(),
            ],
          )
       
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularproducttitle(),
        popularproducts(),
        newarrivaltitle(),
        newAarrivals()
      ],
    );
  }
}
