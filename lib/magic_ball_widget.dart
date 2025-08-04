import 'package:flutter/material.dart';
import 'package:magic_ball/gradient_container.dart';
import 'package:magic_ball/style_text.dart';

class MagicBallWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MagicBallState();
  }
}

class _MagicBallState extends State<MagicBallWidget> {
  var ballImage = "assets/images/ball_images/1.png";
  void shake() {
    setState(() {
      int randomIndex =
          (DateTime.now().millisecondsSinceEpoch / 1000).round() % 5 + 1;
      ballImage = 'assets/images/ball_images/$randomIndex.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyleText("Ask a question..."),
        const SizedBox(height: 50),
        Image.asset(ballImage, width: 300),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: shake,
          child: Text(
            "Shake",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}
