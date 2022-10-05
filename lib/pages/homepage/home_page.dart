import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  void navigate;
  double topLeft;
  double topRight;
  double bottomLeft;
  double bottomRight;
  Color color;
  String title;
  IconData icon;

  IconButtons(this.navigate,
      {super.key,
      this.title = ' ',
      this.icon = Icons.numbers,
      this.color = Colors.green,
      this.topLeft = 0,
      this.topRight = 0,
      this.bottomLeft = 0,
      this.bottomRight = 0});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) => color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(topRight),
                      topLeft: Radius.circular(topLeft),
                      bottomRight: Radius.circular(bottomRight),
                      bottomLeft: Radius.circular(bottomLeft)),
                  side: BorderSide(color: color)))),
      onPressed: () {
        navigate;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 100,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
