import 'package:flutter_appauth/flutter_appauth.dart';

final FlutterAppAuth appAuth = const FlutterAppAuth();

Future<void> login() async {
  final AuthorizationTokenResponse? result = await appAuth.authorizeAndExchangeCode(
    AuthorizationTokenRequest(
      'MxgjH4Hd2MguBR1r1dArTbeQYesnC2uA', 
      'myapp://callback',
      issuer: 'https://dev-5xt2tv6nepcwpmby.us.auth0.com',
      scopes: ['openid', 'profile', 'email'],
    ),
  );

  // Check if result is null
  if (result != null) {
    // Handle tokens (result.accessToken, result.idToken)
    print('Access Token: ${result.accessToken}');
    print('ID Token: ${result.idToken}');
  } else {
    // Handle the case where login failed
    print('Login failed or was canceled');
  }
}
