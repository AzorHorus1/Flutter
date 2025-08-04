import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';
import 'package:magic_ball/style_text.dart';

const Alignment alignmentTopLeft = Alignment.topLeft;
const Alignment alignmentBottomRight = Alignment.bottomRight;
List<String> listOfWords = ['hello', 'world'];
List<int> listOfNumbers = [1, 2, 3, 4, 5];

//const topLeft = Alignment.topLeft;
//const greeting = 'Hello World!';
//final bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //var ballImage = "assets/images/ball_images/1.png";

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 202, 145, 239),
            const Color.fromARGB(255, 73, 8, 92),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: MagicBallWidget(),
      ),
    );
  }
}
