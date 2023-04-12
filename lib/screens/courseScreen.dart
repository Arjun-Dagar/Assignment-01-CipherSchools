import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../main.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final ScrollController _controller = ScrollController();

  void _scrollDown() {
    _controller.animateTo(
      _controller.position.extentAfter,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollUp() {
    _controller.animateTo(
      _controller.position.extentAfter,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  Widget categoryBuilding(int index) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 7,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: Image.network(
            "https://ik.imagekit.io/cipherschools/CipherSchools/languify-1",
            fit: BoxFit.fitWidth,
          ),
        ),
        Expanded(
          child: Container(
            // decoration: BoxDecoration(color: Colors.white),
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 7, left: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  width: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 224, 153)
                          .withOpacity(0.4)),
                  child: const Text(
                    "Languify",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: const Text(
                    "Flutter",
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    "Al generated feedback",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
                const Text(
                  "Test Duration: 30 mins",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-vector/delivery-service-illustrated_23-2148505081.jpg?w=2000"),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Languify",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("express & excel")
              ])
            ],
          ),
        ),
      ]),
    );
  }

  Widget cateogriesCard(int index, context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 7,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
          fit: FlexFit.loose,
          flex: 2,
          child: Image.network(
            "https://ik.imagekit.io/cipherschools/CipherSchools/languify-1",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          // decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 7, left: 10, right: 5),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: const Text(
                  "Flutter",
                  softWrap: true,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8, left: 15),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.76,
              // height: 20,

              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add to Interests",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              )),
        )
      ]),
    );
  }

  Widget counts(scHeight, scwidth) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: scwidth * 0.45,
                  height: 90,
                  child: const Column(
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
                  child: const Column(
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
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: const Column(
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
                child: const Column(
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
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: scwidth * 0.45,
                height: 90,
                child: const Column(
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
                child: const Column(
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
      margin: const EdgeInsets.symmetric(horizontal: 13),
      padding: const EdgeInsets.only(left: 10, right: 50, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(img_url))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'Unlock your learning potential with CipherSchools',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Best platform for the students',
            style: TextStyle(
                height: 1.1,
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
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

  List images = [
    "https://images.pexels.com/photos/2114014/pexels-photo-2114014.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1287142/pexels-photo-1287142.jpeg?auto=compress&cs=tinysrgb&w=400"
  ];

  @override
  Widget build(BuildContext context) {
    var scSize = MediaQuery.of(context).size;
    var scHeight = scSize.height;
    var scWidth = scSize.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CarouselSlider(
              options: CarouselOptions(
                  // height: scHeight * 0.345,
                  aspectRatio: 1.4,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeFactor: 0.3,
                  viewportFraction: 1,
                  enlargeCenterPage: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.zero,
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(53, 58, 66, 1),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://media.istockphoto.com/id/1305012465/vector/internet-connection-abstract-sense-of-science-and-technology-graphic-design-background.jpg?s=612x612&w=0&k=20&c=WC7evuE5zPhwRv8hk9uiydDAQGca-WKKRHlTrFjEOD8=",
                                  ),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 95),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Projects',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: const Text(
                                        "App Development",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        child: Image.network(
                                            "https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png"),
                                        radius: 12,
                                      ),
                                      Text(
                                        "Aditya Thakur",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        "Watch",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: scHeight * 0.06),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container()),
          Container(
            // margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended Courses",
                      style: TextStyle(
                          color: isDarkTheme ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    DropdownButton(items: [
                      DropdownMenuItem(
                          child: Text(
                        ("Popular"),
                        style: TextStyle(
                          color: isDarkTheme ? Colors.white : Colors.black,
                        ),
                      ))
                    ], onChanged: (onChanged) {})
                  ],
                ),
              ),
              Container(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: scHeight * 0.38,
                      alignment: Alignment.center,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        padding: const EdgeInsets.all(10),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        /* --------------------- Building Slider category Items --------------------- */
                        itemBuilder: ((context, index) =>
                            categoryBuilding(index)),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            // splashColor: Colors.white,
                            alignment: Alignment.centerRight,
                            onPressed: _scrollUp,
                            icon: const Icon(Icons.arrow_forward)),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            // splashColor: Colors.white,
                            alignment: Alignment.centerLeft,
                            onPressed: _scrollDown,
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Videos",
                      style: TextStyle(
                          color: isDarkTheme ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: scHeight * 0.38,
                      alignment: Alignment.center,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        padding: const EdgeInsets.all(10),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        /* --------------------- Building Slider category Items --------------------- */
                        itemBuilder: ((context, index) =>
                            categoryBuilding(index)),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            splashColor: Colors.white,
                            alignment: Alignment.centerRight,
                            onPressed: _scrollDown,
                            icon: const Icon(Icons.arrow_forward)),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            splashColor: Colors.white,
                            alignment: Alignment.centerLeft,
                            onPressed: _scrollDown,
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: isDarkTheme ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: scHeight * 0.38,
                      alignment: Alignment.center,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        padding: const EdgeInsets.all(10),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        /* --------------------- Building Slider category Items --------------------- */
                        itemBuilder: ((context, index) =>
                            cateogriesCard(index, context)),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            splashColor: Colors.white,
                            alignment: Alignment.centerRight,
                            onPressed: _scrollDown,
                            icon: const Icon(Icons.arrow_forward)),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            splashColor: Colors.white,
                            alignment: Alignment.centerLeft,
                            onPressed: _scrollDown,
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 40,
          ),
          counts(scHeight, scWidth),
          const SizedBox(
            height: 35,
          ),
          contcard(scHeight,
              'https://ik.imagekit.io/cipherschools/CipherSchools/for-student_nm1kTXQDf.jpg'),
          const SizedBox(
            height: 30,
          ),
          contcard(scHeight,
              'https://ik.imagekit.io/cipherschools/CipherSchools/for-creator_sNs5MAVE7.jpg'),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
