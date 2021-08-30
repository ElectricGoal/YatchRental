import 'package:flutter/material.dart';
import 'package:yacht_rental/screen/size_config.dart';

class BookingOption extends StatelessWidget {
  const BookingOption({
    Key? key,
    required this.cost,
  }) : super(key: key);

  final int cost;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.heightMultiplier * 3,
        bottom: SizeConfig.heightMultiplier * 3,
      ),
      child: Column(
        children: [
          Schedule(),
          Guest(),
          WiFi(),
          Meal(),
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 1,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Total payable:   ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: (cost + 200).toString() + ' \$',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            //alignment: Alignment.bottomCenter,
            //margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 70,
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Text(
              'Pay',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(
          Icons.schedule,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(
        '1 day',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Icon(
        Icons.edit_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}

class Guest extends StatelessWidget {
  const Guest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(
          Icons.attribution,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(
        '2 guests',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Icon(
        Icons.edit_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}

class WiFi extends StatelessWidget {
  const WiFi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(
          Icons.wifi,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(
        'Wi-Fi',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Icon(
        Icons.edit_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}

class Meal extends StatelessWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(
          Icons.ramen_dining,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(
        'Meals',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Icon(
        Icons.edit_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
