import 'package:carstore/pages/home_page.dart';
import 'package:carstore/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callHomePage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  _callMainPage(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => MainPage()));
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

          //! SignUp:
          Container(
            margin: EdgeInsets.only(top: 60,),
            width: 388,
            height: 58,
            child: Column(
              children: [
                Text("Sign Up",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                Text("FInd your dream car!",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          SizedBox(height: 30,),

          //! Fullname:
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
                hintText: "Fullname",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: "poppins",
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          //! Email_adress:
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
                prefixIcon: Icon(Icons.email,size: 30,color: Colors.grey,),
                hintText: "Email adress",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          //! Phone_number:
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
                prefixIcon: Icon(Icons.phone,size: 30,color: Colors.grey,),
                hintText: "Phone number",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

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

          SizedBox(height: 35,),

          //! SignUp_button:
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
              child: Text("Sign Up",style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),

          SizedBox(height: 8,),

          //! Or:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 164,
                color: Colors.grey,
              ),

              Text(" Or ",style: TextStyle(
                fontSize: 21,
                //fontWeight: FontWeight.bold,
                color: Colors.grey
              ),),

              Container(
                height: 1,
                width: 164,
                color: Colors.grey,
              ),
              ],
          ),

          SizedBox(height: 8,),

          //! SignUp_with:
          Text("Sign Up with",style: TextStyle(
            color: Color(0xFFFF5C00),
            fontSize: 16,
          ),),

          SizedBox(height: 8,),

          //! Bottom_icons:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook,size: 30,color: Colors.black,),
              SizedBox(width: 25,),
              Icon(FontAwesomeIcons.instagram,size: 30,color: Colors.black,),
              SizedBox(width: 25,),
              Icon(FontAwesomeIcons.youtube,size: 30,color: Colors.black,),
            ],
          ),

          SizedBox(height: 25,),

          //! Bottom_part:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),),
              GestureDetector(
                onTap: (){
                  _callHomePage();
                },
                child: Text(" Sign In",style: TextStyle(
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
