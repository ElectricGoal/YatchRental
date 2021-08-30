import 'package:flutter/material.dart';
import 'package:yacht_rental/model/yacht.dart';
import 'package:yacht_rental/screen/pay_screen.dart';
import 'package:yacht_rental/screen/size_config.dart';
import 'package:yacht_rental/widget/yacht_detail_components.dart';

class YachtDetail extends StatefulWidget {
  const YachtDetail({
    Key? key,
    required this.yacht,
  }) : super(key: key);

  final Yacht yacht;

  @override
  _YachtDetailState createState() => _YachtDetailState();
}

class _YachtDetailState extends State<YachtDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.heightMultiplier * 5,
        bottom: SizeConfig.heightMultiplier * 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Length(),
                  ),
                  Expanded(
                    child: Built(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Producer(),
                  ),
                  Expanded(
                    child: Type(),
                  ),
                ],
              ),
              Container(
                height: SizeConfig.heightMultiplier * 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Model(),
                    ),
                    Expanded(
                      child: Capacity(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'From: ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: widget.yacht.cost.toString() + ' \$ ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PayScreen(
                              yacht: widget.yacht,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 50,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      'Book',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
