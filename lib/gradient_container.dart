import 'package:flutter/material.dart';
import 'package:magic_ball/style_text.dart';

const Alignment alignmentTopLeft = Alignment.topLeft;
const Alignment alignmentBottomRight = Alignment.bottomRight;

//const topLeft = Alignment.topLeft;
//const greeting = 'Hello World!';
//final bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 136, 223, 134),
            const Color.fromARGB(255, 136, 118, 25),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Image.asset("assets/images/ball_images/1.png"),
      ),
    );
  }
}
