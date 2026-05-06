import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/mountain.jpeg"), fit: BoxFit.cover),
                ),
              )
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu), color: Colors.white),
                  // Expanded(child: Container()),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz), color:  Colors.white),
                  ],
                )
              ),
          ],
        ),
      )
    );
  }
}