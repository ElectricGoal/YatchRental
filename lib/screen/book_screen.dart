import 'package:flutter/material.dart';
import 'package:yacht_rental/model/yacht.dart';
import 'package:yacht_rental/screen/size_config.dart';
import 'package:yacht_rental/widget/yacht_detail.dart';
import 'package:yacht_rental/widget/yacht_detail_components.dart';

class BookScreen extends StatefulWidget {
  BookScreen({Key? key, required this.yacht}) : super(key: key);

  final Yacht yacht;

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black12,
                  BlendMode.darken,
                ),
                image: AssetImage(widget.yacht.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
              elevation: 0,
            ),
            body: Container(
              margin: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 20,
                left: SizeConfig.widthMultiplier * 5,
              ),
              child: NameAndReview(
                name: widget.yacht.name,
                stars: widget.yacht.star,
                comments: widget.yacht.comment,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Container(
                height: SizeConfig.heightMultiplier * 50,
                child: Scaffold(
                  backgroundColor: Colors.white,
                  body: YachtDetail(
                    yacht: widget.yacht,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 47,
              right: SizeConfig.widthMultiplier * 15,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.lightBlueAccent,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
