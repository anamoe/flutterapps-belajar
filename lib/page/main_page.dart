import 'package:belajar1/page/chat.dart';
import 'package:belajar1/page/home.dart';
import 'package:belajar1/page/profil.dart';
import 'package:belajar1/page/transaksi.dart';
import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: colorbutton,
        child: ikonkeranjang,
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              backgroundColor: Colors.blueAccent,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Image.asset(
                      'assets/chat.png',
                      width: 20,
                      color: currentIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Image.asset(
                      'assets/chat.png',
                      width: 20,
                      color: currentIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Image.asset(
                      'assets/chat.png',
                      width: 20,
                      color: currentIndex == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 20,bottom:10 ),
                    child: Image.asset(
                      'assets/chat.png',
                      width: 20,
                      color: currentIndex == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                  label: '',
                ),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return Profil();
        case 1:
          return Transaksi();
        case 2:
          return Home();
        case 3:
          return Chat();
        default:
        return Home();
      }
    }

    return Scaffold(
       
        floatingActionButton: cardButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
       
        
        body: body(),
         );
  }
}
