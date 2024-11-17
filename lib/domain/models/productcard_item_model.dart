
import 'package:bidbuyweb/core/utils/image_constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ProductcardItemModel {
  String? timeLeft;
  String? timeLeft1;
  String? productName;
  String? price; // Represents initial price
  int? bidCount; // Number of bids
  List<Map<String, dynamic>>? biddingList; // Details of the bids
  String? sellerName;
  String? sellerRating;
  String? id;
  List<String>? imageUrls;
  DateTime? startingTime;
  DateTime? endingTime;
  String? description;
  ProductcardItemModel({
    this.timeLeft,
    this.timeLeft1,
    this.productName,
    this.price,
    this.bidCount,
    this.biddingList,
    this.sellerName,
    this.sellerRating,
    this.id,
    this.imageUrls,
    this.startingTime,
    this.endingTime,
    this.description,
  });

  // Method to convert Firestore document data to ProductcardItemModel instance
  factory ProductcardItemModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    print("Fetched data from Firestore: $data");

    final dateFormat = DateFormat("MM/dd/yyyy");

    // Parsing starting and ending times
    DateTime? startingTime = data['startingTime'] is Timestamp
        ? (data['startingTime'] as Timestamp).toDate()
        : dateFormat.parse(data['startingTime'], true);

    DateTime? endingTime = data['endingTime'] is Timestamp
        ? (data['endingTime'] as Timestamp).toDate()
        : dateFormat.parse(data['endingTime'], true);

    // Calculate time left
    String? timeLeft;
    Duration difference = endingTime.difference(DateTime.now());
    timeLeft = _formatDuration(difference);

    // Extract bidding list
    List<Map<String, dynamic>>? biddingList =
        (data['biddingList'] != null && data['biddingList'] is List)
            ? List<Map<String, dynamic>>.from(data['biddingList'])
            : [];

    // Calculate bid count
    int bidCount = biddingList.length;

    return ProductcardItemModel(
      timeLeft: timeLeft ?? "TimeLeft",
      productName: data['productName'] ?? "Product name",
      price: data['initialPrice'] ?? "Rs.120", // Initial price
      bidCount: bidCount, // Total number of bids
      biddingList: biddingList, // List of bid details
      sellerName: data['sellerName'] ?? "(Seller name)",
      sellerRating: data['sellerRating']?.toString() ?? "0",
      id: doc.id,
      description: data["description"] ?? "description",
      imageUrls: (data['photosList'] != null && data['photosList'] is List)
          ? List<String>.from(data['photosList'])
          : [ImageConstant.imgImage7],
      startingTime: startingTime,
      endingTime: endingTime,
    );
  }

  // Helper function to format the duration as "Xd Yh Zm" format
  static String _formatDuration(Duration duration) {
    if (duration.isNegative) return "Time ended";
    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;
    return "${days}d ${hours}h ${minutes}m";
  }
}
