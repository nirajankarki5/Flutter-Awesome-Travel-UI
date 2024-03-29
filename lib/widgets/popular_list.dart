import 'package:flutter/material.dart';
import 'package:travelUI/models/popular_model.dart';

class PopularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("Popular",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        ),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   Padding(
          //     padding: EdgeInsets.only(left: 20.0),
          //     child: Text("Popular",
          //         style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          //   ),
          //   //SizedBox(height: 0),
          //   buildPopular(0),
          //   buildPopular(1),
          // ],
          children: popular.map((e) => buildPopular(e)).toList(),
        ),
      ],
    );
  }

  Widget buildPopular(data) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                height: 60.0,
                width: 60.0,
                image: AssetImage(data.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  '${data.date[0]} - ${data.date[1]}',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
