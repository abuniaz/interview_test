import 'package:flutter/material.dart';
import 'package:interview_text/container_two/container_two.dart';
import 'package:interview_text/contant_box/all_task.dart';
import 'package:interview_text/reminder_task/reminder_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Record',
      style: optionStyle,
    ),
    Text(
      'Index 3: Saved',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white10,
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 360,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 21, 63, 57),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 8, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.white70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hi, Habib👋',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Let's explore your notes",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 170, 170, 170),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/pic.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FirstContainer(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Reminder Task",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "See All",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 199, 199, 199)),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note2.jpg',
                          text: 'Save Date: 10/12/2022',
                          title: 'Online Class Routine',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note.png',
                          text: 'Save Date: 15/12/2022',
                          title: 'Office Work List',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note2.jpg',
                          text: 'Save Date: 10/12/2022',
                          title: 'Online Class Routine',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note2.jpg',
                          text: 'Save Date: 15/12/2022',
                          title: 'Office Work List',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note2.jpg',
                          text: 'Save Date: 10/12/2022',
                          title: 'Online Class Routine',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ReminderTaskContant(
                          pic: 'images/note.png',
                          text: 'Save Date: 15/12/2022',
                          title: 'Office Work List',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  )),
            ]),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "All Tasks",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See All"))
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: const [
                    TaskContent(
                      pic: 'images/note.png',
                      text: 'Save Date: 10/12/2022',
                      title: 'Online Class Routine',
                    ),
                    TaskContent(
                      pic: 'images/note.png',
                      text: 'Save Date: 10/12/2022',
                      title: 'Online Class Routine',
                    ),
                    TaskContent(
                      pic: 'images/note.png',
                      text: 'Save Date: 10/12/2022',
                      title: 'Online Class Routine',
                    ),
                    TaskContent(
                      pic: 'images/note.png',
                      title: 'Online Class Routine',
                      text: 'Save Date: 15/12/2022',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Record',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black12,
        onTap: _onItemTapped,
      ),
    );
  }
}
