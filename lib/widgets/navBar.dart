import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../widgets/ourTheme.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem>
      items; // NOTE: You CAN declare your own model here instead of `PersistentBottomNavBarItem`.
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    Key key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      //height: 150.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 20.0,
                  color: isSelected
                      ? (item.activeContentColor == null
                          ? item.activeColor
                          : item.activeContentColor)
                      : item.inactiveColor == null
                          ? item.activeColor
                          : item.inactiveColor),
              child: item.icon,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 0.0),
          //   child: Material(
          //     type: MaterialType.transparency,
          //     child: FittedBox(
          //         child: Text(
          //       item.title,
          //       style: TextStyle(
          //           color: isSelected
          //               ? (item.activeContentColor == null
          //                   ? item.activeColor
          //                   : item.activeContentColor)
          //               : item.inactiveColor,
          //           fontWeight: FontWeight.w400,
          //           fontSize: item.titleFontSize),
          //     )),
          //   ),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          var index = items.indexOf(item);
          return Flexible(
            child: GestureDetector(
              onTap: () {
                this.onItemSelected(index);
              },
              child: _buildItem(item, selectedIndex == index),
            ),
          );
        }).toList(),
      ),
    );
  }
}
