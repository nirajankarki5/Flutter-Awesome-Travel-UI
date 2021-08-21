import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  CustomTabBar({
    this.icons,
    this.selectedIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      height: 80.0,
      child: TabBar(
        indicator: BoxDecoration(
          color: Theme.of(context).accentColor,
          shape: BoxShape.circle,
        ),
        tabs: icons
            .asMap()
            .map(
              (i, e) => MapEntry(
                  i,
                  Tab(
                    icon: Icon(
                      e,
                      color:
                          i == selectedIndex ? Colors.white : Colors.grey[700],
                      size: 30.0,
                    ),
                  )),
            )
            .values
            .toList(),
        onTap: onTap,
      ),
    );
  }
}
