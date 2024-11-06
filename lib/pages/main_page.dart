import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none,
                size: 24,
              )),
        ],
        title: Text(
          "CarStore",
          style: TextStyle(
            color: Color(0xFFFF5C00),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              //! Search_text_field:
              Container(
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(left: 15, top: 30),
                width: 350,
                height: 74,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                      hintText: "Search for Honda Pilot 7-Passenger",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                  margin: EdgeInsets.only(left: 6, top: 25),
                  child: Icon(
                    Icons.tune,
                    size: 32,
                  )),
            ],
          ),

          SizedBox(
            height: 50,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //! Cars:
                Container(
                  height: 186,
                  width: 308,
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/car1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 150, left: 34),
                    child: Text(
                      "tesla Model 3 Standard Range Plus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 186,
                  width: 308,
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/car2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 150, left: 34),
                    child: Text(
                      "tesla Model 3 Standard Range Plus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 186,
                  width: 308,
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/mercedes.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 165, left: 100),
                    child: Text(
                      "Mercedes E63S ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //! Recommended:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 30),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 30, right: 15),
                child: Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    //fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),

          //! all_cars:
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 175,
                    height: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/car3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
