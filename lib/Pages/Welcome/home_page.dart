import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/Pages/Dashboard/dashboard.dart';
import 'package:task_management/Pages/TaskSchedule/TaskSchedulePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(
          child: Center(
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 7.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios,
                size: 25.0,
                color: Theme.of(context).buttonColor,
              ),
              padding: EdgeInsets.all(8.0),
              shape: CircleBorder(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25.0),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                'images/tasks.svg',
                height: size.height * 0.5,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manage your',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).buttonColor,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'daily tasks',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).buttonColor,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Plan your daily activities with our app and achieve your goals',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).buttonColor,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return TaskSchedulePage();
                              },
                            ),
                          );
                        },
                        elevation: 7.0,
                        fillColor: Colors.white,
                        child: Text(
                          'Get started',
                          style: TextStyle(
                              fontSize: 20.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).buttonColor),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 18.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
