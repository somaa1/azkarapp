import 'package:azkar/core/constants.dart';
import 'package:azkar/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';

import '../../core/resources/manager_assets.dart';
import '../../core/resources/manager_font_family.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_font_weight.dart';
import '../../core/resources/manager_height.dart';
import '../../core/resources/manager_raduis.dart';
import '../../core/resources/manager_strings.dart';
import '../../core/resources/manager_width.dart';
import '../../core/widgets/base_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int num = 0;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: baseText(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                color: ManagerColors.white,
              ))
        ],
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              hoverColor: Colors.cyan,
              // shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(30)
              // ),

              onPressed: () {
                setState(() {
                  if (num <= 0) {
                    num = 0;
                  } else {
                    num--;
                  }
                });
              },
              child: Icon(Icons.remove),
              backgroundColor: Color(0xffEEDCB0),
            ),
            FloatingActionButton(
              // shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(30)
              // ),
              onPressed: () {
                setState(() {
                  num++;
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xffB08B57),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ManagerAssets.azkarImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: ManagerWidth.w100,
              height: ManagerHeight.h40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ManagerColors.primaryColor,
                borderRadius: BorderRadius.circular(
                  ManagerRadius.r12,
                ),
              ),
              child: baseText(text: '$num'),
            ),
          ),
          Container(

            width: ManagerWidth.w100,
            height: ManagerHeight.h40,
            decoration: BoxDecoration(
color: ManagerColors.primaryColor2,
              borderRadius: BorderRadius.circular(
              ManagerRadius.r12,)
            ),
              alignment: Alignment.center,
child: baseText(text: 'e'),
          )
        ],
      ),
    );
  }
}


