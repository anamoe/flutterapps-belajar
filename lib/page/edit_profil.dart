import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class EditProfil extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

  Widget inputName(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: thirdystyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
        decoration: InputDecoration(
          hintText: 'Anam Aan',
          hintStyle: thirdystyle,
          enabledBorder :UnderlineInputBorder(
            borderSide: BorderSide(
              color :third,
            )
          )
        ),
      ),
        ],
      ),
      
      
      
    );

  }
     Widget inputuserName(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Userame',
            style: thirdystyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
        decoration: InputDecoration(
          hintText: '@anamss',
          hintStyle: thirdystyle,
          enabledBorder :UnderlineInputBorder(
            borderSide: BorderSide(
              color :third,
            )
          )
        ),
      ),
        ],
      ),     
    );
  }
   Widget inputEmail(){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: thirdystyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
        decoration: InputDecoration(
          hintText: 'Anam@gmail.com',
          hintStyle: thirdystyle,
          enabledBorder :UnderlineInputBorder(
            borderSide: BorderSide(
              color :third,
            )
          )
        ),
      ),
        ],
      ),
      
      
      
    );

  }
    
    Widget conten(){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 30),
            decoration :BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: 
              AssetImage(
                'assets/profile.png'
              )
              )
            )
          ),
          inputName(),
          inputuserName(),
          inputEmail()

        ]
        ),

      );

    }
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed :(){
            Navigator.pop(context);
          }
        ),
        backgroundColor: colorbutton,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile'
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(
            Icons.check
          ))
        ],
       ),
      body: conten(),
      resizeToAvoidBottomInset: false,



    );
  }
}