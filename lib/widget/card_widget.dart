import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 250,
          color: Colors.blueGrey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildImage(),
              Spacer(),
              buildText(),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildImage() => Image.network(
        'https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        height: 150,
        width: double.infinity,
        fit: BoxFit.cover,
      );

  Widget buildText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Healthy Eating',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold), //TextStyle
            ),
            const SizedBox(height: 4),
            Text(
              'Italian Dinner Course',
              style: TextStyle(fontSize: 16), //TextStyle
            ),
          ],
        ),
      );
}
