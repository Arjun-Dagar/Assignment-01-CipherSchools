import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget counts(scHeight, scwidth) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: scwidth * 0.45,
                  height: 90,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '15K+',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(243, 145, 46, 1)),
                      ),
                      Text(
                        'Students',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: scwidth * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '10K+',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(243, 145, 46, 1)),
                      ),
                      Text(
                        'Certificates deliverd',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '450K+',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 145, 46, 1)),
                    ),
                    Text(
                      'Streamed minutes',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '12TB+',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 145, 46, 1)),
                    ),
                    Text(
                      'Content streamed in last 60 days',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '50+',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 145, 46, 1)),
                    ),
                    Text(
                      'Creators',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '110+',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 145, 46, 1)),
                    ),
                    Text(
                      'Programs available',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget contcard(scHeight, img_url) {
    return Container(
      height: scHeight * 0.35,
      margin: EdgeInsets.symmetric(horizontal: 13),
      padding: EdgeInsets.only(left: 10, right: 50, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(img_url))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Unlock your learning potential with CipherSchools',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Best platform for the students',
            style: TextStyle(
                height: 1.1,
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'For Students',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.golf_course,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var scSize = MediaQuery.of(context).size;
    var scHeight = scSize.height;
    var scWidth = scSize.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CircleAvatar(
              backgroundColor: Color.fromRGBO(55, 60, 68, 1),
              child: Icon(
                Icons.co2,
                color: Color.fromRGBO(243, 145, 46, 1),
                size: 38,
              )),
        ),
        // leadingWidth: 54,
        backgroundColor: Colors.white,
        title: Text(
          'CiperSchools',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        elevation: 4,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: scHeight * 0.06),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                                fontSize: 30,
                                height: 1.3,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'the Future',
                            style: TextStyle(
                                fontSize: 30,
                                height: 1.3,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(243, 145, 46, 1)),
                          ),
                          TextSpan(
                            text: ' of Learning!',
                            style: TextStyle(
                                fontSize: 30,
                                height: 1.3,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Start Learning by best creators for',
                      style: TextStyle(fontSize: 20),
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(243, 145, 46, 1)),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('absolutely Free'),
                          TypewriterAnimatedText('absolutely Free'),
                          TypewriterAnimatedText('absolutely Free'),
                          TypewriterAnimatedText('absolutely Free'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image(
                              width: scWidth * 0.23,
                              // height: 50,
                              image: NetworkImage(
                                  'https://i.ibb.co/5sYXS1T/circle.png')),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Text('50+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Mentors')
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color.fromARGB(255, 196, 186, 186),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4.8/5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Image(
                                      // width: 100,
                                      // height: 25,
                                      width: scWidth * 0.23,
                                      image: NetworkImage(
                                          'https://i.ibb.co/CWPD2w2/rating.png')),
                                  Text('Ratings')
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 145, 46, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Start Learning Now ->',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  // height: 230.0,
                  aspectRatio: 1.4,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeFactor: 0.3,
                  viewportFraction: 0.6,
                  enlargeCenterPage: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(53, 58, 66, 1),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Color.fromRGBO(243, 145, 46, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Projects',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    'Get the hands-on experience with real time projects guided by expert mentors!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    maxLines: 4,
                                  ),
                                )
                              ]),
                        ),
                        Positioned(
                          right: 0,
                          top: 30,
                          child: Container(
                            alignment: Alignment(0.7, 0),
                            width: 70,
                            height: 30,
                            color: Color.fromRGBO(243, 145, 46, 1),
                            child: Text(
                              'Free',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 24,
                            right: 42,
                            child: Container(
                              transform: Matrix4.rotationZ(0.78),
                              width: 30,
                              height: 30,
                              color: Color.fromRGBO(53, 58, 66, 1),
                            ))
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 40,
            ),
            counts(scHeight, scWidth),
            SizedBox(
              height: 35,
            ),
            contcard(scHeight,
                'https://ik.imagekit.io/cipherschools/CipherSchools/for-student_nm1kTXQDf.jpg'),
            SizedBox(
              height: 30,
            ),
            contcard(scHeight,
                'https://ik.imagekit.io/cipherschools/CipherSchools/for-creator_sNs5MAVE7.jpg'),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
