import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/auth/domain/respotries/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future completInformation(
      {required String? name,
      required String? phoneNumber,
      required String? address}) {
    // TODO: implement completInformation
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> loginWitFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success &&
          loginResult.accessToken != null) {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(
                loginResult.accessToken!.tokenString);

        return await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
      } else {
        throw Exception("Facebook login failed!");
      }
    } catch (e) {
      print("Error during Facebook login: $e");
      throw "Error during Facebook login"; // أو تقدر تستخدم throw Exception لو عاوز ترجع الخطأ للمكان اللي بينادي الدالة
    }
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithGoogel() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // دي اللي بنعمل منها دخول للمستخدم
      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      return Left(Exception("something went wrong !"));
    }
  }
}
