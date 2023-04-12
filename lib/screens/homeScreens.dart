import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CiperSchools'),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(children: [
                Text('Welcome to the Future of Learning!'),
                Text('Start Learning by Best creators for'),
                Row(
                  children: [
                    Icon(Icons.abc),
                    Column(
                      children: [Text('50+'), Text('Mentors')],
                    ),
                    Divider(),
                    Column(
                      children: [
                        Text('4.8/5'),
                        Row(
                          children: [Icon(Icons.abc), Text('Ratings')],
                        )
                      ],
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {}, child: Text('Start Learning Now ->')),
              ]),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
