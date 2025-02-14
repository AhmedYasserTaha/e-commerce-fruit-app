import 'package:e_commerce_app/features/auth/domain/respotries/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  Future loginWitFacebook() {
    // TODO: implement loginWitFacebook
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogel() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
  }
}
