import 'package:flutter/material.dart';
import 'package:random_quote_generator/Pages/Quotes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50], // Teal-themed background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display a sample quote or image
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '"The best way to predict the future is to create it."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset('lib/Pages/download.png')
                ],
              ),
            ),
            SizedBox(height: 40),
            // Get Started button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/quote-generator');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
