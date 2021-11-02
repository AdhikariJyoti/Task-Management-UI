import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/olivia.jpg',
      'assets/images/sophia.jpg',
      'assets/images/steven.jpg'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(
          child: Center(
            child: RawMaterialButton(
              elevation: 9.0,
              fillColor: Colors.white,
              onPressed: () {},
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 25.0,
                  color: Theme.of(context).buttonColor,
                ),
                onPressed: () {},
              ),
              shape: CircleBorder(),
            ),
          ),
        ),
        actions: <Widget>[
          Center(
            child: RawMaterialButton(
              elevation: 7.0,
              fillColor: Colors.white,
              onPressed: () {},
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 25.0,
                    color: Theme.of(context).buttonColor,
                  )),
              shape: CircleBorder(),
            ),
          ),
          Center(
            child: RawMaterialButton(
              elevation: 9.0,
              fillColor: Colors.white,
              onPressed: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage('images/sam.jpg'),
                radius: 20.0,
                backgroundColor: Colors.white,
              ),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Love<3',
              style: TextStyle(
                  color: Theme.of(context).buttonColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Let set go!',
                style: TextStyle(
                    color: Theme.of(context).buttonColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.7,
                    fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              shape: RoundedRectangleBorder(),
              borderOnForeground: true,
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              elevation: 9.0,
              child: Column(
                children: [
                  ListTile(
                    title: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UI Design',
                            style: TextStyle(
                              color: Theme.of(context).buttonColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.9,
                              fontSize: 30,
                            ),
                          ),
                          ImageStack(
                            totalCount: 3,
                            imageList: images,
                            imageRadius: 35,
                            imageBorderWidth: 3,
                            imageBorderColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    subtitle: Container(
                      margin: EdgeInsets.symmetric(vertical: 0.0),
                      child: Text(
                        'Henery,Mike,Youk....+2 more',
                        style: TextStyle(
                          letterSpacing: 0.9,
                          wordSpacing: 2.4,
                          color: Theme.of(context).buttonColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 0.0),
                        child: RawMaterialButton(
                          elevation: 7.0,
                          fillColor: Colors.white,
                          onPressed: () {},
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.dashboard,
                                size: 25.0,
                                color: Theme.of(context).buttonColor,
                              )),
                          shape: CircleBorder(),
                        ),
                      ),
                      SizedBox(
                        width: 0.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 0.0,
                        ),
                        child: RawMaterialButton(
                          elevation: 7.0,
                          fillColor: Colors.white,
                          onPressed: () {},
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.dashboard_customize,
                                size: 25.0,
                                color: Theme.of(context).buttonColor,
                              )),
                          shape: CircleBorder(),
                        ),
                      ),
                      SizedBox(
                        width: 150.0,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 25.0, right: 55.0),
                          child: Text(
                            'Now',
                            style: TextStyle(
                              letterSpacing: 0.0,
                              color: Theme.of(context).buttonColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Monthly Review',
                    style: TextStyle(
                      letterSpacing: 0.5,
                      color: Theme.of(context).buttonColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                RawMaterialButton(
                  elevation: 7.0,
                  fillColor: Colors.white,
                  onPressed: () {},
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_today,
                        size: 25.0,
                        color: Theme.of(context).buttonColor,
                      )),
                  shape: CircleBorder(),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(),
              borderOnForeground: true,
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              elevation: 9.0,
              child: SvgPicture.asset(''),
            )
          ],
        ),
      ),
    );
  }
}
