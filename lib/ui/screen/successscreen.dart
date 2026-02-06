import 'package:flutter/material.dart';

class _SuccessScreen extends StatelessWidget {
  const _SuccessScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.check_circle, color: Colors.white, size: 120),
            SizedBox(height: 20),
            Text(
              "Added to Cart!",
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
