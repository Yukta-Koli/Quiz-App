import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg3.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor, fontSize: 100),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor, fontSize: 140),
              ),
              Spacer(flex: 3),
              Spacer(), // 1/6
              InkWell(
                onTap: () => Get.to(WelcomeScreen()),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 1.5), // 15
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Play Again",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
              Spacer(), // it will take 2/6 spaces
            ],
          )
        ],
      ),
    );
  }
}
