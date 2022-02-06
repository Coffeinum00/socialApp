import 'package:flutter/material.dart';
import 'package:social_app/screens/feed_page.dart';
import 'package:social_app/screens/login_page.dart';
import 'package:social_app/screens/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String appBarTitle = '';
  int currentIndex = 0;
  List myPages = [
    FeedPage(),
    Container(),
    Container(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.green[200],
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                    appBarTitle = 'Home';
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50.0,
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.home),
                      Text('Home'),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() => currentIndex = 1);
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50.0,
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.person),
                      Text('Profile'),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() => currentIndex = 2);
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50.0,
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.chat),
                      Text('Chat'),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                    appBarTitle = 'Settings';
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50.0,
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.settings),
                      Text('Settings'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              MaterialButton(
                  height: 50.0,
                  elevation: 10.0,
                  shape: const CircleBorder(),
                  color: Colors.red,
                  child: const Icon(Icons.settings_power),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      body: Container(child: myPages[currentIndex]),
    );
  }
}
