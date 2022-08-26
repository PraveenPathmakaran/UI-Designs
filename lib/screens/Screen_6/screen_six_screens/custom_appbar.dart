import 'package:designs/screens/screen_four.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 48,
      backgroundColor: Colors.blue[800],
      centerTitle: true,
      expandedHeight: 90,
      // ignore: prefer_const_constructors
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: const Text('Catalogue'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        // ignore: unnecessary_const
        child: const TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Text(
                'Products',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Tab(
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
