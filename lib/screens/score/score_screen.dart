import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      body:
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(''),)),
          //   child: Column(
          //       children: [
          //         const Spacer(flex: 3),
          //         Text(
          //           "Score",
          //           style: Theme.of(context)
          //               .textTheme
          //               .headline3!
          //               .copyWith(color: kSecondaryColor),
          //         ),
          //         const Spacer(),
          //         Text(
          //           "${qnController.correctAns * 10}/${qnController.questions.length * 10}",
          //           style: Theme.of(context)
          //               .textTheme
          //               .headline4!
          //               .copyWith(color: kSecondaryColor),
          //         ),
          //         const Spacer(flex: 3),
          //       ],
          //     ),
          // ),

          Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "${qnController.correctAns * 10}/${qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
