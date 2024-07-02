import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'THE_CAT_API_KEY', obfuscate: true)
  static final String theCatApiKey = _Env.theCatApiKey;
}