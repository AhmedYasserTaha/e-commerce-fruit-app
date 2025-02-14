import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<Exception, UserCredential>> loginWithGoogel();
  Future<UserCredential> loginWitFacebook();
  Future completInformation({
    required String name,
    required String phoneNumber,
    required String address,
  });
}
