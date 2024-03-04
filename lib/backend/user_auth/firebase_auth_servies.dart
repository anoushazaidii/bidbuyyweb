import 'dart:js';
import 'package:bidbuyweb/domain/models/seller_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_storage/firebase_storage.dart';



class FirebaseAuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  static final CollectionReference _sellerCollection = firestore.collection('donars');
  
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
  print("here");
    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
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

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    print("here");
    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
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

  Future<void> saveSellerDataToFirestore(SellerModel sellerModel) async {
    await _sellerCollection
        .doc(sellerModel.uid)
        .set(sellerModel.toMap(sellerModel));
  }
  signInWitGoogle()async{
  print("eher");
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    try {
      print("in try");

      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      print("Da");
      if(googleSignInAccount != null ){
        final GoogleSignInAuthentication googleSignInAuthentication = await
        googleSignInAccount.authentication;
        print("Ff");
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
          
        );
        // Assuming responseJson is the parsed JSON response

        print("signed infff");
        await _firebaseAuth.signInWithCredential(credential);
      }

    }
    catch(e) {
      print("issue=${e}");
// showToast(message: "some error occured $e");
    }


  
  }

}


