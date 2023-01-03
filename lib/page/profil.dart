import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class Profil  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: colorbutton,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
          padding: EdgeInsets.all(30),
          child: Row(children: [
            ClipOval(
              child: Image.asset(
                'assets/profile.png',
                width: 64,
              ),
            ),
            SizedBox(
              width: 16),
            Expanded(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
                'Hallo, Anam',
                style: thirdystyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold
                ),
              ),
              Text(
                '@anamssss',
                style: thirdystyle.copyWith(
                  fontSize: 12
                 
                ),
              ),
            ],
            )
            ),

            GestureDetector(
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-in',(route)=>false);
              },
              child: Image.asset(
                'assets/logout.png',
                width: 30,
              ),
            )
          ]
          ,
        )
        ),

      )
      );
    }
    
    Widget menuItem(String text){
      return Container(
        margin :EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: thirdystyle.copyWith(
                fontSize: 16
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: third,
            )
          
        ]),
      );
    }
    Widget Conten(){
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
        decoration: BoxDecoration( 
        color: Color.fromARGB(179, 255, 255, 255)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Akun',
            style: primarystyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
              color: third
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/edit-profil');
            },
            child: menuItem('Edit Profile')),
          menuItem('Orderanmu'),
          menuItem('Bantuan'),
          SizedBox(
            height: 30,
          ),
          Text(
            'Umum',
            style: primarystyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
              color: third
            ),
          ),
          menuItem('Privasi dan Keamanan'),
          menuItem('Hubungi Layanan'),
          menuItem('Tentang'),


        ]),
      )
      );
    }
    return Column(
      children: [
        header(),
        Conten()
      ],
    );
  }
}