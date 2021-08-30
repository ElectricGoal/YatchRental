import 'package:flutter/material.dart';
import 'package:yacht_rental/screen/home_page_components.dart';
import 'package:yacht_rental/screen/size_config.dart';
import 'package:yacht_rental/widget/bottom_bar.dart';
import 'package:yacht_rental/widget/yachts_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: SizeConfig.heightMultiplier * 10,
          title: ExploreText(),
          actions: [
            SearchIcon(),
          ],
        ),
        bottomNavigationBar: BottomBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              FilterText(),
              Expanded(
                child: YachtsView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
