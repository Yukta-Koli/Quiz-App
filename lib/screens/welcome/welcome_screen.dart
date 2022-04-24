import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 140,
                      child: Text(
                        "Quiz App",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 100, wordSpacing: 2)

                      ),
                    )
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 50,
                      child: Text("Let's Play Quiz,",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 40)
                      ),
                    ),
                  ),

                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 300,
                      child: Text("Enter your informations below",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.black, fontSize: 20)
                      ),
                    ),
                  ),

                  Spacer(), // 1/6
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1C2341),
                          hintText: "Full Name",
                          hintStyle: TextStyle(fontSize: 23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    )
                  ),
                  Spacer(), // 1/6
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 1.5), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
