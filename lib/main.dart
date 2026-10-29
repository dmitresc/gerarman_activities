import 'package:flutter/material.dart';
import 'edge_insets_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFAF0FA),
        appBar: AppBar(
          title: const Text('Gerarman'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 10),

                // 1. Red Block
                InsetDemoTile(
                  text: 'EdgeInsets.all(30)',
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
                  color: Color(0xFFEF5350),
                ),

                // 2. Yellow Band
                InsetDemoTile(
                  text: 'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  color: Color(0xFFFFEB3B),
                  textColor: Colors.black87,
                  isFullWidth: true,
                ),

                // 3. Blue Block
                InsetDemoTile(
                  text: 'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  margin: EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  color: Color(0xFF2196F3),
                ),

                // 4. Green Block (Increased height & width via padding to match target layout)
                InsetDemoTile(
                  text: 'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
                  color: Color(0xFF4CAF50),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}