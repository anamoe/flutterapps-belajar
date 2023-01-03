import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Widget header(){

      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
         
          children: [
          Text('Register'
          ,style: primarystyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
          ),
          SizedBox(
            height: 2,
          ),
          Text('Sign Up Continue',style: primarystyle.copyWith(),),
        ]
        ),
      );
    }

     Widget FullNameInput(){


      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: primarystyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Row(
                    children: [

                      ikonname,
                      SizedBox(
                        width: 16,
                      
                      ),
                        Expanded(child: TextFormField(
                          style: secondystyle,
                          decoration: InputDecoration(        
                            hintText: 'Input Full Name',
                            hintStyle: secondystyle
                          ),
                        ))
                ],
                )
                ),
              )
        ]),
      );
    }


 Widget usernameInput(){


      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primarystyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Row(
                    children: [

                      ikonname,
                      SizedBox(
                        width: 16,
                      
                      ),
                        Expanded(child: TextFormField(
                          style: secondystyle,
                          decoration: InputDecoration(        
                            hintText: 'Input Username',
                            hintStyle: secondystyle
                          ),
                        ))
                ],
                )
                ),
              )
        ]),
      );
    }

    Widget emailInput(){


      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primarystyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Row(
                    children: [

                      ikonemail,
                      SizedBox(
                        width: 16,
                      
                      ),
                        Expanded(child: TextFormField(
                          style: secondystyle,
                          decoration: InputDecoration(        
                            hintText: 'Input Email',
                            hintStyle: secondystyle
                          ),
                        ))
                ],
                )
                ),
              )
        ]),
      );
    }


    Widget passwordInput(){

      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password ',
              style: primarystyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Row(
                    children: [

                      ikonpasword,
                      SizedBox(
                        width: 16,
                      
                      ),
                        Expanded(child: TextFormField(
                          obscureText: true,
                          style: secondystyle,
                          decoration: InputDecoration(        
                            hintText: 'Input Password',
                            hintStyle: secondystyle
                          ),
                        ))
                ],
                )
                ),
              )
        ]),
      );
    }

    Widget SignInButton(){

      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: colorbutton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Sign Up',
            style: primarystyle.copyWith(
              fontSize: 16,
              fontWeight:medium,
            ),
          ),
        ),

      );
    }

    Widget Footer(){
      return Container(
        margin:EdgeInsets.only(bottom: 30,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ? ',
              style: primarystyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                ' Sign In',
                style:purle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ) ,
                ),
            )
          ],

        ),
      );
    }
    return Scaffold(

      backgroundColor: Colors.blueAccent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(children: [
            header(),
            FullNameInput(),
            usernameInput(),
            emailInput(),
            passwordInput(),
            SignInButton(),
            Footer()
            
      
          ]),
         
        ),
      )
    );
  }
}