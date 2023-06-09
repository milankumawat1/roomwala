import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:roomwala/screens/bottom%20nav/profile.dart';
import 'package:roomwala/screens/login.dart';
import 'package:roomwala/screens/privacy.dart';

import '../../themes/myColors.dart';

class settings extends StatefulWidget {
  @override
  _state createState() => _state();
}

class _state extends State<settings> {
  bool isSwitchedNoti = false;
  bool isSwitchedAppNoti = true;

  @override
  Widget build(BuildContext context) {
    const TextStyle mystyle = TextStyle(
        fontSize: 16,
        color: Color(0xff303147),
        fontWeight: FontWeight.w500,
        fontFamily: 'Gothic');
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  color: AppColors.pri,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  fontSize: 20),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gothic'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  'Edit Profile',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => profile()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Change Password',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Linked Advert',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notification',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gothic'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Notification',
                                  style: mystyle,
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 40,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Switch(
                                      value: isSwitchedNoti,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitchedNoti = value;
                                          print(isSwitchedNoti);
                                        });
                                      },
                                      activeTrackColor: AppColors.pri,
                                      activeColor: AppColors.pri,
                                      inactiveTrackColor: Color(0xff878787),
                                      inactiveThumbColor: AppColors.pri,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'App Notification',
                                  style: mystyle,
                                ),
                                Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 40,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Switch(
                                      value: isSwitchedAppNoti,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitchedAppNoti = value;
                                          print(isSwitchedAppNoti);
                                        });
                                      },
                                      activeTrackColor: AppColors.pri,
                                      activeColor: AppColors.pri,
                                      inactiveTrackColor: Color(0xff878787),
                                      inactiveThumbColor: AppColors.pri,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Other',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gothic'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Privacy',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrivacyPolicyPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Network Partners',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Us',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Logout',
                                  style: mystyle,
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
