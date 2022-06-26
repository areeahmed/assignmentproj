import 'package:flutter/material.dart';

class CityDetails extends StatelessWidget {
  const CityDetails({Key? key, 
  required this.imageURL, 
  required this.nameCity, 
  required this.discription}) : super(key: key);

  final String imageURL;
  final String nameCity;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image.network(imageURL),
        Text(nameCity, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Text(discription)
      ]),
    );
  }
}