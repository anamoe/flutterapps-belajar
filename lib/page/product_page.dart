import 'package:belajar1/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = ['assets/shoes.jpg', 'assets/shoes2.jpg', 'assets/shoes3.jpg'];
  List familiar = [
    'assets/shoes.jpg',
    'assets/shoes2.jpg',
    'assets/shoes3.jpg',
    'assets/shoes2.jpg',
    'assets/shoes3.jpg',
    'assets/shoes.jpg',
    'assets/shoes2.jpg',
    'assets/shoes3.jpg',
    'assets/shoes.jpg'
  ];
  int currenindex = 0;
  bool iswhislist = true;

  @override
  Widget build(BuildContext context) {
    Future<void> showsuksesdialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          child: AlertDialog(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: third,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/ic_succes.png',
                  width: 100,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'SUKSES',
                  style:
                      greenystyle.copyWith(fontSize: 16, fontWeight: semibold),
                ),
                 SizedBox(
                  height: 12,
                ),
                Text(
                  'Item ditambahkan',
                  style:
                      greenystyle.copyWith(fontSize: 16, fontWeight: semibold),
                ),
                 SizedBox(
                  height: 20,
                ),
                Container(
                  width: 154,
                  height: 44,
                  child: TextButton(
                    onPressed: (){
                      

                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)

                      ),
                    ),
                    child: Text('Lihat Keranjang',
                    style: primarystyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),),
                  ),
                )

              ],
            )),
          ),
        ),
      );
    }

    Widget indicator(int indexs) {
      return Container(
        width: currenindex == indexs ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currenindex == indexs ? colorbutton : Colors.blueGrey),
      );
    }

    Widget header() {
      int indexs = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                    ),
                  ),
                  Icon(Icons.shopping_bag, color: colorbutton)
                ]),
          ),
          CarouselSlider(
            items: images
                .map(
                  (images) => Image.asset(
                    images,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (indexs, reason) {
                  setState(() {
                    currenindex = indexs;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              indexs++;

              return indicator(indexs);
            }).toList(),
          ),
        ],
      );
    }

    Widget familiarcard(String imageurl) {
      return Container(
          width: 54,
          height: 54,
          margin: EdgeInsets.only(
            right: 16,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageurl)),
              borderRadius: BorderRadius.circular(6)));
    }

    Widget Content() {
      int index = -1;
      return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 17),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              color: colorbutton),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: Row(children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sepatu  SuperBak',
                          style: primarystyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold,
                          )),
                      Text('Sport',
                          style: primarystyle.copyWith(
                            fontSize: 12,
                            fontWeight: semibold,
                          )),
                    ],
                  )),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        iswhislist = !iswhislist;
                      });
                      if (iswhislist) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            'ditambhkan di favorite',
                            textAlign: TextAlign.center,
                          ),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            'dihapus  dari daftar favorite',
                            textAlign: TextAlign.center,
                          ),
                        ));
                      }
                    },
                    child: Image.asset(
                      iswhislist
                          ? 'assets/whistlist-black.png'
                          : 'assets/whistlist.png',
                      width: 46,
                    ),
                  )
                ]),
              ),
              //price
              Container(
                margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: fourcolor, borderRadius: BorderRadius.circular(4)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga mulai dari',
                        style: primarystyle,
                      ),
                      Text(
                        'Rp. 570.000,00',
                        style: primarystyle.copyWith(
                            fontSize: 16, fontWeight: semibold),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deskripsi',
                        style: primarystyle.copyWith(fontWeight: medium),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'siap mantap siap mantap siap mantap siap mantap',
                        style: primarystyle.copyWith(fontWeight: light),
                        textAlign: TextAlign.justify,
                      )
                    ]),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Familiar',
                          style: primarystyle.copyWith(fontWeight: medium),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: familiar.map((image) {
                            index++;
                            return Container(
                                margin:
                                    EdgeInsets.only(left: index == 0 ? 30 : 0),
                                child: familiarcard(image));
                          }).toList(),
                        ),
                      ),
                    ]),
              ),
              //button cart
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/detail-chat');
                      },
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/chat.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 54,
                        child: TextButton(
                          onPressed: () {
                            showsuksesdialog();
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: fourcolor),
                          child: Text(
                            'ADD TO CART',
                            style: primarystyle.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    }

    return Scaffold(
        backgroundColor: primarycolor,
        body: ListView(
          children: [header(), Content()],
        ));
  }
}
