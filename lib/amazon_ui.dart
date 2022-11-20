import 'dart:ui';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'amazon';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage('assets/images/001.png'),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {  },
                  ),
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {  },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey[500],
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              color: Color(0xFF018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Whot are you looking for',
                          border: InputBorder.none,
                          icon: Icon(Icons.search,color: Color(0xFF018197),size: 20),
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt,color: Color(0xFF018197),size: 30 ),
                  ],
                ),
                ),
              ),
            Expanded(
              child: ListView(
                children: [
                  // #localtion
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                     color: Colors.blueGrey,
                    height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Dilevr to Uzbekistan, Republic of',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  // #reklama
                  Container(
                    color: Colors.white,
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(70),bottomRight: Radius.circular(70)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/1101.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellowAccent,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              color: Colors.white,
                              child: const Center(
                                child: Text('We ship 45 millon products',style: TextStyle(fontSize: 18)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //#SignIn
                  SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        SizedBox(height: 15,),
                        Text('Sign in for the best exprience',style: TextStyle(fontSize: 18,color: Colors.black),),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text('Sign in',style: TextStyle(fontSize: 18)),

                          ),
                        ),
                        SizedBox(height: 15),
                        Text('Create an account',style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                      ],
                    ),
                  ),
                  // #deal
                  SizedBox(height: 8),
                  Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deal of the Day',style: TextStyle(fontSize: 22,color: Colors.black),),
                      SizedBox(height: 10),
                      Image(
                        width: double.infinity,
                        height: 240,
                        image: AssetImage('assets/images/product.jpg'),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 16),
                      Text('Up to 31% off APC UPS Batter Back',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),
                      SizedBox(height: 10),
                      Text('\$10.99 - \$79.9',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),
                    ],
                  ),
                ),

                  // #product
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      //crossAxisAlignment: ,
                      children: [
                        Text('Best sellers in Electronics',style: TextStyle(color: Colors.black,fontSize: 22)),
                        SizedBox(height: 10,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Image(
                                            image: AssetImage('assets/images/books.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Expanded(
                                        child: Container(
                                          child: Image(
                                            image: AssetImage('assets/images/noutbooks.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/images/phone.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Expanded(
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/images/bags.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // #top Praducts
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Top products in Camera',style: TextStyle(fontSize: 24)),
                        SizedBox(height: 10),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage('assets/images/books.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height:60),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/images/bags.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/images/noutbooks.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
