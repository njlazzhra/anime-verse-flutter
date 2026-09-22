import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1D1D2E), //warna awal
            Color(0xFF25254D), //warna akhir
          ],
          begin: Alignment.topLeft, //arah mulai gradien
          end: Alignment.bottomRight, //arah akhir gradien
        ),
      ),
      child: child,
    );
  }
}