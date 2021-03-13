import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var str;
  final strController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('کلمات برعکس'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: strController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "لطفا کلمه یا جمله مورد نظر خود را وارد کنید",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  str = strController.text;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 350.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 0.7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "برعکس کن",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "${str.toString().split('').reversed.join()}",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
