import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget  {
  final String title;
  const MainAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: const Color.fromRGBO(145, 129, 242, 1),
      centerTitle: true,
      elevation: 0,
    );
  }
}
