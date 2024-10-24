

import 'package:flutter/material.dart';

class HkCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h);

    final firstPoint = Offset(0, h - 40);
    final lastPoint = Offset(50, h - 40);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, lastPoint.dx, lastPoint.dy);

    path.lineTo(w - 50, h - 40);

    final secondFirstPoint = Offset(w, h - 40);
    final secondLastPoint = Offset(w, h);
    path.quadraticBezierTo(secondFirstPoint.dx, secondFirstPoint.dy, secondLastPoint.dx, secondLastPoint.dy);

    path.lineTo(w, h);
    path.lineTo(w, 0);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
