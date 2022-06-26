import 'package:assignmentproj/mock/mock_city.dart';
import 'package:assignmentproj/src/city_details_screen.dart';
import 'package:flutter/material.dart';

class CityCardView extends StatelessWidget {
  const CityCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( centerTitle: true,
          title: Text("City List"),
        ),
        body: Column(children: [
          Expanded(child: ListView.builder(itemCount: mockDataCity.length ,itemBuilder: ((context, index) {
            return Center(
              child: Stack(
                children: [
                  Container(
                    height: 350, width: 350,
                    child: Image.network(mockDataCity[index]["image"].toString()),
                  ),
                  Positioned(
                    height: 60,
                    width: 170,
                    top: 260,
                    left: 90,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=> CityDetails(
                              imageURL: mockDataCity[index]["image"].toString(),
                              nameCity: mockDataCity[index]["city_name"].toString(),
                              discription: mockDataCity[index]["discript"].toString(),
                            ),
                            )
                        );
                      },
                      child: Container(alignment: Alignment.center, decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(25)),
                      child: Text(mockDataCity[index]["city_name"].toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),),
                    )
                  )
                ],
              ),
            );
          }
          )
          )
          )
        ]),
      ),
    );
  }
}