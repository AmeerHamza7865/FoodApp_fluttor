// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Widget SigleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                "http://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png"),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fresh Basil",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '50\$/ 50 Gram',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "50 Gram",
                                style: TextStyle(fontSize: 10.5),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xffd6b738),
          actions: [
            CircleAvatar(
              child: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
              radius: 12,
              backgroundColor: Color(0xffd4d181),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                child: Icon(
                  Icons.shop,
                  size: 17,
                  color: Colors.black,
                ),
                radius: 12,
                backgroundColor: Color(0xffd4d181),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.istockphoto.com/photos/vegetables-water-splash-picture-id683041906?k=20&m=683041906&s=612x612&w=0&h=dntNY9HveuxT9daAb5eZvKoxUfFnX-zzDrcIM0w7x5g=")),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 155),
                              child: Container(
                                height: 45,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 15,
                                  ),
                                  child: Text(
                                    "Vegi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.green,
                                              blurRadius: 10,
                                              offset: Offset(3, 3))
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "30% Off",
                              style: TextStyle(
                                  color: Colors.green[100],
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "On all Vegatables Product",
                              style: TextStyle(
                                color: Colors.green[100],
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herbs Seasoning"),
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SigleProducts(),
                  SigleProducts(),
                  SigleProducts(),
                  SigleProducts(),
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color(0xffd9dad9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.network(
                              "http://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png"),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fresh Basil",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '50\$/ 50 Gram',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "50 Gram",
                                              style: TextStyle(fontSize: 10.5),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.yellow,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        // color: Colors.black,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.orange,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits"),
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SigleProducts(),
                  SigleProducts(),
                  SigleProducts(),
                  SigleProducts(),
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Color(0xffd9dad9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.network(
                              "http://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png"),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fresh Basil",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '50\$/ 50 Gram',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "50 Gram",
                                              style: TextStyle(fontSize: 10.5),
                                            ),
                                          ),
                                          Center(
                                            child: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.yellow,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        // color: Colors.black,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.orange,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
