import 'package:belajar1/theme.dart';
import 'package:belajar1/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: colorbutton,
        centerTitle: true,
        title: Text(
          'Message',
          style: primarystyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget Conten() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/chat.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Gada pesan woi ?',
              style: thirdystyle.copyWith(fontSize: 36, fontWeight: medium)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  backgroundColor: colorbutton,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                'Explore',
                style: thirdystyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          )
        ]),
      ));
    }

     Widget ContenAdachat() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          children: [
            ChatTile()
          ],
        )
      )
      );
    }

    return Column(
      children: [header(), ContenAdachat()],
    );
  }
}
