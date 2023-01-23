import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget(
      {super.key, required this.title, required this.background, required this.titleColor});

  final String title;
  final Color background;
  final Color titleColor;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
          color: titleColor,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      toolbarHeight: 60,
      backgroundColor: background,
      elevation: 0,
    );
  }
}
