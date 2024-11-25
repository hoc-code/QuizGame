import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_game/apps/routes/router_name.dart';
import 'package:quiz_game/apps/utils/const.dart';
import 'package:quiz_game/pages/home/widgets/hom_dropdown.dart';
import 'package:quiz_game/pages/home/widgets/home_title.dart';
import 'package:quiz_game/widgets/Backgroud_custom.dart';
import 'package:quiz_game/widgets/Button_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroudCustom(),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeTitle(),
                  const HomDropdown(),
                  SizedBox(height: getHeight(context)* 0.06,),
                  ButtonCustom(
                    title: 'Bắt đầu thực hành',
                    onTap: () {
                      print('Button pressed!');
                    },),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
