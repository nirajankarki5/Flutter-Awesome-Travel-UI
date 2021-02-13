import 'package:flutter/material.dart';
import 'package:travelUI/models/activity_model.dart';
import 'package:travelUI/models/sights_model.dart';

class SightsScreen extends StatefulWidget {
  final Sights sights;
  final Activity activities;

  SightsScreen({this.sights, this.activities});

  @override
  _SightsScreenState createState() => _SightsScreenState();
}

class _SightsScreenState extends State<SightsScreen> {
  double noOfPerson = 1;
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text('$stars $rating',
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: [
            PicDetails(),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 15.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout),
                    iconSize: 30.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 80.0,
              child: Details(),
            ),
            BookNow(),
            Positioned(
              bottom: 315.0,
              right: 20.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.bookmark,
                    color: Theme.of(context).primaryColor, size: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget PicDetails() {
    return Stack(
      children: [
        Container(
          height: 450,
          //color: Colors.yellow,
          child: Image(
            image: AssetImage(
              widget.sights.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 450.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x00000000), Colors.black12],
            ),
          ),
        ),
        Positioned(
          bottom: 130.0,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: _buildRatingStars(widget.activities.rating),
          ),
        ),
        Positioned(
          bottom: 40.0,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Container(
              width: 250.0,
              height: 85.0,
              child: Text(
                widget.sights.city,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Details() {
    // double noOfPerson = 1;
    return Container(
      height: 260,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 20.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 260.0,
              child: Text('${widget.sights.city}, ${widget.sights.country}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text(
                  'Available: ',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '${widget.activities.startTimes[0]} - ${widget.activities.startTimes[1]} . ${widget.activities.startDay[0]} - ${widget.activities.startDay[1]}',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'Price: ',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '${widget.activities.price}\$',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Slider(
              value: noOfPerson,
              min: 1,
              max: 10,
              divisions: 9,
              activeColor: Theme.of(context).primaryColor,
              onChanged: (newValue) {
                setState(() {
                  noOfPerson = newValue;
                  //print(noOfPerson);
                });
              },
            ),
            Text(
              '${noOfPerson.toInt()} persons',
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                '${widget.sights.description}',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BookNow() {
    return Positioned(
      bottom: 0.0,
      child: Container(
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Total: ${widget.activities.price * noOfPerson}\$',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 78.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Theme.of(context).primaryColor),
              child: Center(
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
