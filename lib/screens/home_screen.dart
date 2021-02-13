import 'package:flutter/material.dart';
import 'package:travelUI/widgets/explore.dart';
import 'package:travelUI/widgets/popular_list.dart';
import 'package:travelUI/widgets/sights_carousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<String> _category = ['Sights', 'Tours', 'Adventures'];

  Widget _buildCateory(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 35.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_category[index],
                style: TextStyle(
                  color: _selectedIndex == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                )),
            _selectedIndex == index
                ? Icon(Icons.fiber_manual_record,
                    size: 13.0, color: Theme.of(context).primaryColor)
                : Text(""),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 60.0),
          children: [
            explore(),
            SizedBox(height: 25.0),
            categoryList(),
            SizedBox(height: 25.0),
            SightsList(),
            SizedBox(height: 25.0),
            PopularList(),
          ],
        ),
      ),
    );
  }

  Widget categoryList() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        height: 35.0,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _category
              .asMap()
              .entries
              .map(
                (MapEntry map) => _buildCateory(map.key),
              )
              .toList(),
        ),
      ),
    );
  }
}
