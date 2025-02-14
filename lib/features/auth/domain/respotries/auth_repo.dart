abstract class AuthRepo {
  Future loginWithGoogel();
  Future loginWitFacebook();
  Future completInformation({
    required String name,
    required String phoneNumber,
    required String address,
  });
}
