// ignore_for_file: prefer_const_constructors

import 'package:designs/screens/Screen_6/screen_six_screens/screen_six_listtile.dart';
import 'package:flutter/material.dart';

import 'screen_six_screens/custom_appbar.dart';
import 'screen_six_screens/screen_six_listtile.dart';

class ScreenSix extends StatelessWidget {
  const ScreenSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [const CustomAppbar()];
          },
          body: TabBarView(children: [
            ListView.builder(
              addRepaintBoundaries: false,
              padding: const EdgeInsets.all(0),
              itemBuilder: ((context, index) {
                return ScreenSixListtile(index: index);
              }),
              itemCount: 8,
            ),
            Center(
                child: Text(
              'Coming soon......',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ))
          ]),
        ),
      ),
    );
  }
}
