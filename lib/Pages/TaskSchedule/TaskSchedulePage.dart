import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Pages/Dashboard/dashboard.dart';
import 'package:task_management/Pages/FirstPage/first_page.dart';
import 'package:task_management/Pages/chat/chats.dart';
import 'package:task_management/Pages/settings/settings.dart';

class TaskSchedulePage extends StatefulWidget {
  const TaskSchedulePage({
    Key? key,
  }) : super(key: key);

  @override
  _TaskSchedulePageState createState() => _TaskSchedulePageState();
}

class _TaskSchedulePageState extends State<TaskSchedulePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    FirstPage(),
    ChatPage(),
    DashboardPage(),
    SettingPage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = FirstPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home_filled,
                color: currentTab == 0
                    ? Theme.of(context).buttonColor
                    : Colors.grey,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = FirstPage();
                  currentTab = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.dashboard_rounded,
                color: currentTab == 1
                    ? Theme.of(context).buttonColor
                    : Colors.grey,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = DashboardPage();
                  currentTab = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: currentTab == 2
                    ? Theme.of(context).buttonColor
                    : Colors.grey,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = ChatPage();
                  currentTab = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: currentTab == 3
                    ? Theme.of(context).buttonColor
                    : Colors.grey,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = SettingPage();
                  currentTab = 3;
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
