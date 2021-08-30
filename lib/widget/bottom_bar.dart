import 'package:flutter/material.dart';
import 'package:yacht_rental/screen/size_config.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<IconData> barItems = [
    Icons.sailing,
    Icons.map,
    Icons.local_dining,
    Icons.favorite,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: SizeConfig.heightMultiplier * 8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: barItems.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: _chooseEffect(
              _selectedIndex == index,
              barItems[index],
            ),
          );
        },
      ),
    );
  }
}

Widget _chooseEffect(bool isSelected, IconData icon) {
  if (isSelected) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 5),
      width: (SizeConfig.screenWidth - 20) / 5,
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlueAccent,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
  return Container(
    //margin: EdgeInsets.symmetric(vertical: 5),
    width: (SizeConfig.screenWidth - 20) / 5,
    child: Icon(
      icon,
      color: Colors.black,
      size: 24,
    ),
  );
}
