import 'package:assignment/screens/courseScreen.dart';
import 'package:assignment/screens/homeScreens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool isDarkTheme = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _ishomeScreen = true;

  AppBar homeappbar() {
    return AppBar(
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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.list,
            size: 35,
          ),
        )
      ],
      elevation: 4,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
    );
  }

  AppBar courseappbar() {
    return AppBar(
      foregroundColor: isDarkTheme ? Colors.white : Colors.black,
      centerTitle: false,
      leading: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: CircleAvatar(
            backgroundColor: isDarkTheme ? Colors.white : Colors.black,
            child: Icon(
              Icons.co2,
              color: Color.fromRGBO(243, 145, 46, 1),
              size: 38,
            )),
      ),
      actions: [
        // DropdownButton(
        //     items: [const DropdownMenuItem(child: Text(("Popular")))],
        //     onChanged: (onChanged) {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Switch(
            activeColor: isDarkTheme ? Colors.white : Colors.black,
            value: isDarkTheme,
            onChanged: (value) {
              _toggleTheme(); // Call the _toggleTheme function when the switch is toggled
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(Icons.add_alert),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(Icons.search),
        ),
      ],

      // leadingWidth: 54,
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      title: const Text(
        'CiperSchools',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      elevation: 4,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
    );
  }

  void _toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme; // Toggle the theme
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _ishomeScreen
          ? Colors.white
          : isDarkTheme
              ? Colors.black
              : Colors.white,
      appBar: _ishomeScreen ? homeappbar() : courseappbar(),
      body: Stack(children: [
        _ishomeScreen ? HomeScreen() : CourseScreen(),
        Positioned(
            bottom: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 5  horizontally
                    5.0, // Move to bottom 5 Vertically
                  ),
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _ishomeScreen = true;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: _ishomeScreen ? Colors.orange : Colors.black,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: _ishomeScreen ? Colors.orange : Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _ishomeScreen = false;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.book_sharp,
                          color: _ishomeScreen ? Colors.black : Colors.orange,
                        ),
                        Text(
                          'Courses',
                          style: TextStyle(
                              color:
                                  _ishomeScreen ? Colors.black : Colors.orange),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      Icon(Icons.compass_calibration),
                      Text('Trending')
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [Icon(Icons.person), Text('My Profile')],
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
