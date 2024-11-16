import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_game/apps/routes/router_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Let\'s play QuizGame",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text("Bộ câu hỏi trắc nghiệm lập trình tại LongDev"),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text(
                      'Chọn ngôn ngữ của bạn',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Material(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: InkWell(
                      splashColor: Colors.amber,
                      onTap: () {},
                      child: Ink(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.02),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff44A3AE),
                              Color(0xff33FBC9),
                            ],
                          ),
                        ),
                        width: size.width,
                        child: const Align(
                          child: Text(
                            'Bắt đầu thực hành',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
