import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:xlo/models/ad.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({this.ad});

  final Ad ad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anúncio'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 280.0,
            child: Carousel(
              images: ad.images.map((f) {
                return FileImage(f);
              }).toList(),
              dotSize: 4,
              dotSpacing: 15,
              dotBgColor: Colors.transparent,
              dotColor: Colors.pink,
              autoplay: false,
            ),
          )
        ],
      ),
    );
  }
}