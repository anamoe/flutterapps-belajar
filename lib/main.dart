import 'package:belajar1/page/cart_page.dart';
import 'package:belajar1/page/checkout_page.dart';
import 'package:belajar1/page/checkout_success.dart';
import 'package:belajar1/page/detail_chat.dart';
import 'package:belajar1/page/edit_profil.dart';
import 'package:belajar1/page/home.dart';
import 'package:belajar1/page/main_page.dart';
import 'package:belajar1/page/product_page.dart';
import 'package:belajar1/page/sign_in_page.dart';
import 'package:belajar1/page/sign_up_page.dart';
import 'package:belajar1/page/splashpage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
      '/' : (context) => SplashPage(),
      '/sign-in' : (context) => SignInPage(),
      '/sign-up':(context) => SignUpPage(),
      '/home': (context) => MainPage(),
      '/homes': (context) => Home(),
      '/detail-chat' :(context) => DetailChat(),
      '/edit-profil':(context) => EditProfil(),
      '/produk':(context) => ProductPage(),
      '/cart':(context) => CartPage(),
      '/checkout':(context) => CheckoutPage(),
      '/checkout-success':(context) => CheckoutSuccessPage()
       
     },
    );
  }
}

