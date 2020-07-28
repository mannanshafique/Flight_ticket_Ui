import 'package:flight_ticket_ui/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.all(3.2),
        child: CircleAvatar(
          backgroundColor: primaryColor,
          child: Padding(
            padding: EdgeInsets.all(1.7),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/copy.jpg'),
            ),
          ),
        ),
      ),
      elevation: 0.0,
      title: Text(
        title,
        style: appBarTextStyle,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  //Means width according to device size and height as we give
  Size get preferredSize => Size.fromHeight(50.0);
}
