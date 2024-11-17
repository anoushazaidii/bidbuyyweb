import 'package:bidbuyweb/domain/models/product_model.dart';
import 'package:bidbuyweb/domain/models/seller_model.dart';
import 'package:bidbuyweb/presentation/homepage_mob_one_screen.dart';
import 'package:bidbuyweb/presentation/homepage_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_product_description_mob_screen/seller_product_description_mob_screen.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_add_product.dart';
import 'package:bidbuyweb/presentation/seller_view/seller_profile_mob_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  static final CollectionReference _sellerCollection =
      firestore.collection('sellers');
  static final CollectionReference _userCollection =
      firestore.collection('users');
  static final CollectionReference _productCollection =
      firestore.collection('product');

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> sendOtp(String phoneNumber, Function(String) codeSent,
      Function(FirebaseAuthException) onError) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-complete the OTP process (this might not always happen)
          await _auth.signInWithCredential(credential);
          print('OTP verified automatically');
        },
        verificationFailed: (FirebaseAuthException e) {
          print("Verification failed: ${e.message}");
          onError(e);
        },
        codeSent: (String verificationId, int? resendToken) {
          // Save the verificationId for later use when the user enters the OTP
          codeSent(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Called when the timeout is reached without auto-verification
          print("Code retrieval timeout");
        },
      );
    } catch (e) {
      print("Error during phone verification: $e");
    }
  }

  // Function to verify the OTP entered by the user
  Future<User?> verifyOtp(String verificationId, String otp) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      print("OTP Verified successfully");
      return userCredential.user;
    } catch (e) {
      print("Error verifying OTP: $e");
      return null;
    }
  }

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    print("here");
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("user created");
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print(e);
        print("email not exist");
        // showToast(message: 'The email address is already in use.');
      } else {
        print("some other");
        // showToast(message: 'An error occurred: ${e.code}');
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    print("here");
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print("logged in");
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        print("invalid password or user not found");
        // showToast(message: 'Invalid email or password.');
      } else {
        print("SF");
        // showToast(message: 'An error occurred: ${e.code}');
      }
    }
    return null;
  }

  Future<void> saveSellerDataToFirestore(
      SellerModel sellerModel, context) async {
    await _sellerCollection
        .doc(sellerModel.uid)
        .set(sellerModel.toMap(sellerModel));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              SellerAddProductMobScreen(sellerUid: sellerModel.uid)),
    );
  }

  Future<void> saveProductDataToFirestore(
      ProductModel productModel, context) async {
    await _productCollection
        .doc(productModel.productId)
        .set(productModel.toMap(productModel));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomepageMobScreen()),
    );
  }

  signInWitGoogle() async {
    print("eher");
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    final FirebaseAuthService _auth = FirebaseAuthService();
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    try {
      print("in try");

      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      print("Da");
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        print("Ff");
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );
        // Assuming responseJson is the parsed JSON response

        print("signed infff");
        await _firebaseAuth.signInWithCredential(credential);
      }
    } catch (e) {
      print("issue=${e}");
// showToast(message: "some error occured $e");
    }
  }
}
