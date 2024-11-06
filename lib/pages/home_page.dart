import 'package:carstore/pages/main_page.dart';
import 'package:carstore/pages/signup_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _callSignUp(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  _callMainPage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //! Top_circle:
          Container(
            margin: EdgeInsets.only(top: 80,),
            height: 76,
            width: 76,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFF5C00),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("C",style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
              ),
            ),

          ),

          //! Login:
          Container(
            margin: EdgeInsets.only(top: 90,),
            width: 388,
            height: 58,
            child: Column(
              children: [
                Text("Login",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                Text("Welcome to CarStore",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 50,),

          //! Username:
          Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.only(top: 12,left: 15),
            height: 64,
            width: 366,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3)
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.person,size: 30,color: Colors.grey,),
                hintText: "Username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: "poppins",
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),

          //!Password:
          Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.only(top: 12,left: 15),
            height: 64,
            width: 366,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3)
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock_outline,size: 30,color: Colors.grey,),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),
          //! Forgot_password:
          Text("Forgot Password?",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),

          SizedBox(height: 30,),
          
          //! Login_button:
          GestureDetector(
            onTap: (){
              _callMainPage();
            },
            child: Container(
              height: 64,
              width: 366,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFF5C00),
              ),
              child: Text("Login",style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),

          SizedBox(height: 40,),

          //! Bottom_part:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an acount?",style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),),
              GestureDetector(
                onTap: (){
                  _callSignUp();
                },
                child: Text(" Sign Up",style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFFF5C00),
                  fontWeight: FontWeight.bold,

                ),),
              ),

            ],
          ),

        ],
      ),

    );
  }
}
