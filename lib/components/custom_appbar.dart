import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  Color barColor;
  String title;

  @override
  final Size preferredSize;

  CustomAppbar({required this.title, required this.barColor}) : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: this.barColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          )
      ),
      title: Text(title),
      centerTitle: true,
    );
  }
}
