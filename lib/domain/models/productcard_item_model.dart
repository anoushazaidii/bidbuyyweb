// // import 'package:bidbuyweb/core/utils/image_constant.dart';

// // import '../../core/app_export.dart';

// // /// This class is used in the [productcard_item_widget] screen.
// // class ProductcardItemModel {
// //   ProductcardItemModel({
// //     this.timeLeft,
// //     this.timeLeft1,
// //     this.productName,
// //     this.price,
// //     this.bidCount,
// //     this.sellerName,
// //     this.sellerRating,
// //     this.id,
// //   }) {
// //     timeLeft = timeLeft ?? ImageConstant.imgImage7;
// //     timeLeft1 = timeLeft1 ?? "Time left 4d 20h";
// //     productName = productName ?? "Product name";
// //     price = price ?? "Rs.120";
// //     bidCount = bidCount ?? "3 bids";
// //     sellerName = sellerName ?? "(Seller name)";
// //     sellerRating = sellerRating ?? "45";
// //     id = id ?? "";
// //   }

// //   String? timeLeft;

// //   String? timeLeft1;

// //   String? productName;

// //   String? price;

// //   String? bidCount;

// //   String? sellerName;

// //   String? sellerRating;

// //   String? id;
// // }


// import 'package:bidbuyweb/core/utils/image_constant.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class ProductcardItemModel {
//   String? timeLeft;
//   String? timeLeft1;
//   String? productName;
//   String? price;
//   String? bidCount;
//   String? sellerName;
//   String? sellerRating;
//   String? id;
//   List<String>? imageUrls; // Change to a list of image URLs
//   ProductcardItemModel({
//     this.timeLeft,
//     this.timeLeft1,
//     this.productName,
//     this.price,
//     this.bidCount,
//     this.sellerName,
//     this.sellerRating,
//     this.id,
//     this.imageUrls,
    
//   });

//   // Method to convert Firestore document data to ProductcardItemModel instance
//   factory ProductcardItemModel.fromFirestore(DocumentSnapshot doc) {
//     Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
//     print("Fetched data from Firestore: $data");

//     return ProductcardItemModel(
//       timeLeft: data['timeLeft'] ?? ImageConstant.imgImage7,
//       timeLeft1: data['timeLeft1'] ?? "Time left 4d 20h",
//       productName: data['productName'] ?? "Product name",
//       price: data['initialPrice'] ?? "Rs.120",
//       bidCount: "${data['biddingList']?.length ?? 0} bids",
//       sellerName: data['sellerName'] ?? "(Seller name)",
//       sellerRating: data['sellerRating']?.toString() ?? "0",
//       id: doc.id,
//      imageUrls: (data['photosList'] != null && data['photosList'] is List)
//           ? List<String>.from(data['photosList']) // Convert to List<String>
//           : [ImageConstant.imgImage7], // Fallback to a list with a default image
//     );
//   }
// }

import 'package:bidbuyweb/core/utils/image_constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ProductcardItemModel {
  String? timeLeft;
  String? timeLeft1;
  String? productName;
  String? price;
  String? bidCount;
  String? sellerName;
  String? sellerRating;
  String? id;
  List<String>? imageUrls;
  DateTime? startingTime;
  DateTime? endingTime;

  ProductcardItemModel({
    this.timeLeft,
    this.timeLeft1,
    this.productName,
    this.price,
    this.bidCount,
    this.sellerName,
    this.sellerRating,
    this.id,
    this.imageUrls,
    this.startingTime,
    this.endingTime,
  });

  // Method to convert Firestore document data to ProductcardItemModel instance
  factory ProductcardItemModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    print("Fetched data from Firestore: $data");

    final dateFormat = DateFormat("MM/dd/yyyy");

    DateTime? startingTime = data['startingTime'] is Timestamp
        ? (data['startingTime'] as Timestamp).toDate()
        : dateFormat.parse(data['startingTime'], true);
        
    DateTime? endingTime = data['endingTime'] is Timestamp
        ? (data['endingTime'] as Timestamp).toDate()
        : dateFormat.parse(data['endingTime'], true);

    // Calculate time left
    String? timeLeft;
    if (endingTime != null) {
      Duration difference = endingTime.difference(DateTime.now());
      timeLeft = _formatDuration(difference);
    }

    // Print the times and time left for verification
    print("Starting Time: $startingTime");
    print("Ending Time: $endingTime");
    print("Time Left: $timeLeft");

    return ProductcardItemModel(
      timeLeft: timeLeft ?? "Time ended",
      // timeLeft1: data['timeLeft1'] ?? "Time left 4d 20h",
      productName: data['productName'] ?? "Product name",
      price: data['initialPrice'] ?? "Rs.120",
      bidCount: "${data['biddingList']?.length ?? 0} bids",
      sellerName: data['sellerName'] ?? "(Seller name)",
      sellerRating: data['sellerRating']?.toString() ?? "0",
      id: doc.id,
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
