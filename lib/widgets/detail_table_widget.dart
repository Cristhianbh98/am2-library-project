import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailTableWidget extends StatelessWidget {
  final String id;
  final String author;
  final String category;
  final DateTime createAt;

  const DetailTableWidget({
    Key? key, 
    required this.id,
    required this.author,
    required this.category,
    required this.createAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Detalles",
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(height: 5.0),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "ID:",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Expanded(
              flex: 7,
              child: Text(
                id,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ),                
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "Author:",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Expanded(
              flex: 7,
              child: Text(
                author,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),                
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "Categoria:",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Expanded(
              flex: 7,
              child: Text(
                category,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),                
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                "Fecha:",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Expanded(
              flex: 7,
              child: Text(
                DateFormat("DD/MM/yyyy").format(createAt),
                style: Theme.of(context).textTheme.bodyText1,
              )
            ),                
          ],
        ),
      ],
    );
  }
}
