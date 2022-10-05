import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorDrawer extends StatefulWidget {
  const NavigatorDrawer({super.key});

  @override
  State<NavigatorDrawer> createState() => _NavigatorDrawerState();
}

class _NavigatorDrawerState extends State<NavigatorDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          iconTheme: const IconThemeData(color: Colors.red),
          title: const Text('App'),
        ),
        body: Column(
          children: [
            const ListTile(
              title: const Text('Scores'),
              trailing: Icon(Icons.score),
              iconColor: Colors.red,
            ),
            const ListTile(
              title: const Text('Prize Payout'),
              trailing: Icon(Icons.payment),
              iconColor: Colors.red,
            ),
            const ListTile(
              title: const Text('Rules'),
              trailing: Icon(Icons.rule),
              iconColor: Colors.red,
            ),
            const ListTile(
              title: const Text('Support'),
              trailing: Icon(Icons.support),
              iconColor: Colors.red,
            ),
            const ListTile(
              title: const Text('About'),
              trailing: Icon(Icons.snooze_sharp),
              iconColor: Colors.red,
            ),
            const Spacer(),
            ListTile(
                title: const Text('Log Out'),
                trailing: Icon(Icons.logout),
                iconColor: Colors.red,
                onTap: () {
                  setState(() {
                    // SystemNavigator.pop();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
