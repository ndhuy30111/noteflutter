import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;
  UserRepository() {
    firebaseAuth = FirebaseAuth.instance;
  }
  Future<FirebaseUser> createUser(String email, String password) async {
    try {
      var result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } on PlatformException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<FirebaseUser> signInUser(String email, String password) async {
    try {
      var result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } on PlatformException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signOutUser() async {
    firebaseAuth.signOut();
  }

  Future <bool> isSignedIn()async{
    var currentuser = await firebaseAuth.currentUser();
    return currentuser !=null;
  }

  Future <FirebaseUser> getCurrentUser() async{
    return await firebaseAuth.currentUser();
  }
}
