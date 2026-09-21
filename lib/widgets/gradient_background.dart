import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  // Widget ini membutuhkan widge lain untuk ditampilkan di atasnya (child)
  final Widget child;
  const GradientBackground({
    super.key, required this.child
  });


  @override
  Widget build(BuildContext context) {
    // container sebagai dasar
    return Container(
      // Properti decoration untuk styling visual
      decoration: const BoxDecoration(
        // Definisikan gradien linear
        gradient: LinearGradient (
          colors: [
            Color(0xFF1D1D2E), // warna awal
            Color(0xFF25254D), // warna akhir
          ],
          begin: Alignment.topLeft, // Arah mulai gradien
          end: Alignment.bottomRight, // arah akhir gradien
        ),
      ),

      // Tampilan widget child di atas Container  yang sudah bergantian
      child: child,
    );
  }

}