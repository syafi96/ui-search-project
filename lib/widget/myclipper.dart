import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
   Path path = Path();
   Offset firtsStart = Offset(size.width / 1.5 , size.height -120 );
   Offset firtsEnd = Offset(size.width / 2.5, size.height -70.0 ) ;

   Offset secondStart = Offset( size.width - (size.width /1.15 ) , size.height -40 );
   Offset secondEnd = Offset(size.width -(size.width/1)  , 0 );

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width , size.height -50);
    path.quadraticBezierTo(firtsStart.dx , firtsStart.dy , firtsEnd.dx , firtsEnd.dy);
    path.quadraticBezierTo(secondStart.dx , secondStart.dy, secondEnd.dx, secondEnd.dy);
   
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;

}