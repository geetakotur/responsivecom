import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Column(
          children: [
            // Card 1 (Top Card)
            ResponsiveCard(
              proportion: 1.0, // Adjust as needed
              cardColor: Colors.redAccent,
              contentColor: Colors.lightBlueAccent,
            ),

           SizedBox(height: 30,),

            // Card 2 (Bottom Card)
            ResponsiveCard(
              proportion: 0.5, // Adjust as needed
              cardColor: Colors.redAccent,
              contentColor: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveCard extends StatelessWidget {
  final double proportion;
  final Color cardColor;
  final Color contentColor;

  ResponsiveCard({
    required this.proportion,
    required this.cardColor,
    required this.contentColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * proportion;
        return Container(
          width: cardWidth,
          color: cardColor,
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: cardWidth,
                color: contentColor,
                height: 30,
                child:Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
