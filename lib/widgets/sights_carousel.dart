import 'package:flutter/material.dart';
import 'package:travelUI/models/sights_model.dart';
import 'package:travelUI/screens/sights_screen.dart';

class SightsList extends StatelessWidget {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text('$stars $rating',
        style: TextStyle(
            fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${sights.length} sights',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 15),
          Container(
            height: 300,
            //color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sights.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SightsScreen(
                        sights: sights[index],
                        activities: activities[index],
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0),
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image(
                            height: 300.0,
                            width: 250.0,
                            image: AssetImage(sights[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0x00000000), Colors.black26],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15.0,
                          top: 15.0,
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(Icons.bookmark,
                                color: Theme.of(context).primaryColor,
                                size: 20.0),
                          ),
                        ),
                        Positioned(
                            bottom: 80,
                            left: 20.0,
                            child: _buildRatingStars(activities[index].rating)),
                        Positioned(
                          bottom: 20.0,
                          child: Container(
                            padding: EdgeInsets.only(left: 20.0),
                            height: 50,
                            width: 200,
                            child: Text(sights[index].city,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
