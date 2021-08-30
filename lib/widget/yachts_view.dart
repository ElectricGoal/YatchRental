import 'package:flutter/material.dart';
import 'package:yacht_rental/model/yacht_data.dart';
import 'package:yacht_rental/screen/book_screen.dart';
import 'package:yacht_rental/widget/yacht_view_components.dart';

class YachtsView extends StatefulWidget {
  const YachtsView({Key? key}) : super(key: key);

  @override
  _YachtsViewState createState() => _YachtsViewState();
}

class _YachtsViewState extends State<YachtsView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: yachtList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BookScreen(
                      yacht: yachtList[index],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: 230,
            margin: EdgeInsets.symmetric(vertical: 15),
            padding: EdgeInsets.only(
              right: 5,
              left: 5,
              top: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 5,
                      child: Img(img: yachtList[index].imageUrl),
                    ),
                    Flexible(
                      flex: 2,
                      child: Name(name: yachtList[index].name),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Row(
                            children: star(
                              yachtList[index].star,
                              yachtList[index].comment,
                            ),
                          ),
                          Spacer(),
                          CostText(
                            cost: yachtList[index].cost,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                FavIcon(),
              ],
            ),
          ),
        );
      },
    );
  }
}


