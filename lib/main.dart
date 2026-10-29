import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFDF5FE),
        appBar: AppBar(
          title: const Text('TASK 3 - GERARMAN'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('CrossAxisAlignment.baseline', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: const [
                  Text('A', style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text('B', style: TextStyle(fontSize: 40, color: Colors.amber, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text('C', style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}