import 'package:flutter/material.dart';

class CategoryButtonWidget extends StatelessWidget {
  final String text;
  const CategoryButtonWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(0, 0, 0, .1)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
        overlayColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(0, 0, 0, .3)),
      ),
    );
  }
}