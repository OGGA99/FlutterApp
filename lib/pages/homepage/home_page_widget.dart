import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage/home_page.dart';
import 'package:flutter_application_1/pages/homepage/home_page_widget.dart';

import 'homepage_drawer.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        flexibleSpace: SizedBox(
            width: 120,
            height: 120,
            child: Image.asset('assets/images/loginicon.png')),
        backgroundColor: Colors.white,
      ),
      endDrawer: const NavigatorDrawer(),
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: [
          IconButtons(
            () {},
            color: Colors.purple,
            topRight: 20,
            bottomLeft: 20,
            icon: Icons.play_arrow,
            title: 'Play Now',
          ),
          IconButtons(
            () {},
            color: Colors.green,
            topLeft: 20,
            bottomRight: 20,
            icon: Icons.store,
            title: 'Purchases',
          ),
          IconButtons(
            () {},
            color: Colors.orange,
            topLeft: 20,
            bottomRight: 20,
            icon: Icons.format_list_numbered,
            title: 'Leaderboard',
          ),
          IconButtons(
            () {},
            color: Colors.blue,
            topRight: 20,
            bottomLeft: 20,
            icon: Icons.man,
            title: 'Profile',
          ),
        ],
      ),
    );
  }
}
