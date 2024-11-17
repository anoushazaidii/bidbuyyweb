import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class BidProductMobScreen extends StatefulWidget {
  final String productId;

  const BidProductMobScreen({Key? key, required this.productId})
      : super(key: key);

  @override
  BidProductMobScreenState createState() => BidProductMobScreenState();
}

class BidProductMobScreenState extends State<BidProductMobScreen> {
  TextEditingController priceController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Your Bid"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Max Bid",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter your bid",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _showConfirmationDialog(context),
                child: Text("Place Bid"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Show confirmation dialog
  Future<void> _showConfirmationDialog(BuildContext context) async {
    if (priceController.text.isEmpty) {
      _showErrorDialog("Please enter a bid amount.");
      return;
    }

    final bidAmount = double.tryParse(priceController.text);
    if (bidAmount == null || bidAmount <= 0) {
      _showErrorDialog("Please enter a valid bid amount.");
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm Bid"),
        content: Text("Are you sure you want to bid PKR $bidAmount?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await _placeBid(bidAmount);
            },
            child: Text("Confirm"),
          ),
        ],
      ),
    );
  }

  /// Show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  /// Place bid and update Firebase
  Future<void> _placeBid(double bidAmount) async {
    final User? user = _auth.currentUser;
    if (user == null) {
      _showErrorDialog("You must be logged in to place a bid.");
      return;
    }

    final String userId = user.uid;
    final String userName = user.displayName ?? "Anonymous";
    final String bidTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    final bidData = {
      "userId": userId,
      "userName": userName,
      "bidAmount": bidAmount,
      "bidTime": bidTime,
    };

    try {
      // Update the user's account with the bid
      await _firestore.collection("users").doc(userId).update({
        "bids": FieldValue.arrayUnion([bidData]),
      });

      // Update the product's bidding list
      await _firestore.collection("product").doc(widget.productId).update({
        "biddingList": FieldValue.arrayUnion([bidData]),
              "bidCount": FieldValue.increment(1),

      });

        _showSuccessDialog("Your bid was placed successfully.", () {
      // Navigate back to ProductMobScreen
      Navigator.pop(context);
    });
  } catch (error) {
      _showErrorDialog("An error occurred while placing your bid.");
    }
  }
void _showSuccessDialog(String message, VoidCallback onClose) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Success"),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close the dialog
            onClose(); // Execute the onClose callback
          },
          child: Text("OK"),
        ),
      ],
    ),
  );
}

}
