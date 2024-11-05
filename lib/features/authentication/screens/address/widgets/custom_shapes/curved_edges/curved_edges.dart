import 'package:flutter/material.dart';

/// Custom clipper for creating a path with curved edges.
class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // Define the first quadratic bezier curve
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // Define the second quadratic bezier curve
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    // Define the third quadratic bezier curve
    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Always reclip to update the path when needed
    return true;
  }
}


//The code defines a custom clipper called TCustomCurvedEdges that creates a path 
//with curved edges using quadratic Bézier 
//curves. This clipper can be applied to widgets in Flutter to give them a custom, curved shape. 
//The getClip method specifies the path's shape, and the shouldReclip method ensures 
//the clipping is updated when needed.

//You can use this clipper with a ClipPath widget to apply the custom curved edges to any widget,
// such as a Container.