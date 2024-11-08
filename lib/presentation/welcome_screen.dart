import 'package:bidbuyweb/presentation/seller_view/seller_otp_screen.dart';
import 'package:bidbuyweb/presentation/signup_mob_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0XFF7A2334), // Apply onPrimaryContainer color to AppBar
        title: Text(
          'Select Login Type',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular container with Avatar
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF7A2334).withOpacity(0.8),
              ),
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'), // Replace with your avatar image path
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Welcome! Please select a login option:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 30),
            // Login as User Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF7A2334), // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupMobScreen()),
                );
              },
              child: Text(
                'Login as User',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            // Login as Seller Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF7A2334), // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SellerOtpMobScreen()),
                );
              },
              child: Text(
                'Login as Seller',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

