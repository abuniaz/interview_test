import 'package:flutter/material.dart';

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
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                Text("Let's explore your notes")
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
                            // child: Image.asset(
                            //   "images/pic.jpg",
                            //   fit: BoxFit.cover,
                            // ),
                          )
                        ],
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Welcome to TickTick Task"),
                              const Text(
                                  'your one-stop for task management. Simplify, \ntrack, and accomplish task eith ease.'),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      height: 35,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.teal,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              width: 2, color: Colors.white)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(Icons.play_arrow),
                                          Text('Watch Video')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Reminder Task"),
                          TextButton(
                              onPressed: () {}, child: const Text("See All"))
                        ],
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
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  )),
            ]),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Tasks"),
                TextButton(onPressed: () {}, child: Text("See All"))
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: const [
                    TaskContent(),
                    TaskContent(),
                    TaskContent(),
                    TaskContent(),
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

class TaskContent extends StatelessWidget {
  const TaskContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: Card(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Image.asset(''),
              Column(
                children: const [
                  Text('Online Class Routine'),
                  Text('Save Date: 10/12/22')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
