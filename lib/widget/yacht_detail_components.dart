import 'package:flutter/material.dart';
import 'package:yacht_rental/screen/size_config.dart';
import 'package:yacht_rental/widget/yacht_view_components.dart';

class Length extends StatelessWidget {
  const Length({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.straighten,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Length',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          '34 ft',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Built extends StatelessWidget {
  const Built({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.handyman,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Built in',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          '2002',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Producer extends StatelessWidget {
  const Producer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.face,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Producer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          'Benenoth',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Type extends StatelessWidget {
  const Type({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.explore,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Type',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          'Bareboat',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Model extends StatelessWidget {
  const Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.flutter_dash,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Model',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          'Flutter',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class Capacity extends StatelessWidget {
  const Capacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 10,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.perm_identity,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Capacity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          '7 guests',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class NameAndReview extends StatelessWidget {
  const NameAndReview({
    Key? key,
    required this.name,
    required this.stars,
    required this.comments,
  }) : super(key: key);

  final String name;
  final int stars;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: _star(
                stars,
                comments,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            flex: 2,
            child: Text(
              name,
              style: TextStyle(
                letterSpacing: 1.1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> _star(int stars, int comments) {
  List<Widget> starIcon = [];
  for (int i = 0; i < 5; i++) {
    if (i < stars) {
      starIcon.add(new StarIcon());
    } else {
      starIcon.add(new Space());
    }
  }
  starIcon.add(_Comment(stars: stars, comments: comments));
  return starIcon;
}

class _Comment extends StatelessWidget {
  _Comment({
    Key? key,
    required this.stars,
    required this.comments,
  }) : super(key: key);

  final int stars;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 6),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: stars.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' (' + comments.toString() + ')',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}