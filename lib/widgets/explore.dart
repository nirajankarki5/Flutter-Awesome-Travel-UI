import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explore',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w700, letterSpacing: 1.0),
          ),
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profilePic.JPG'),
              radius: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
