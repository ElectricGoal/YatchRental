import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  Name({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 10),
      child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class Img extends StatelessWidget {
  Img({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            img,
          ),
        ),
      ),
    );
  }
}

class FavIcon extends StatelessWidget {
  const FavIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.lightBlueAccent,
        size: 20,
      ),
    );
  }
}

class StarIcon extends StatelessWidget {
  const StarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
        size: 18,
      ),
    );
  }
}

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 19,
    );
  }
}

class Comment extends StatelessWidget {
  Comment({
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
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' (' + comments.toString() + ')',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CostText extends StatelessWidget {
  const CostText({Key? key, required this.cost}) : super(key: key);
  final int cost;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'From: ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: cost.toString() + ' \$ ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> star(int stars, int comments) {
  List<Widget> starIcon = [];
  for (int i = 0; i < 5; i++) {
    if (i < stars) {
      starIcon.add(new StarIcon());
    } else {
      starIcon.add(new Space());
    }
  }
  starIcon.add(Comment(stars: stars, comments: comments));
  return starIcon;
}