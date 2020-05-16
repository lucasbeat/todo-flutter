import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipPath(
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.pinkAccent, Colors.pink],
                radius: 1,
              ),
            ),
          ),
          clipper: MyWavyClipper(),
        ),
      ],
    );
  }
}

class MyWavyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 120);

    path.quadraticBezierTo(
        0.3 * size.width, size.height, 0.68 * size.width, size.height - 120);

    path.lineTo(0.68 * size.width, size.height - 120);

    path.quadraticBezierTo(
        0.8416 * size.width, size.height - 160, size.width, size.height - 120);

    path.lineTo(size.width, size.height - 120);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
