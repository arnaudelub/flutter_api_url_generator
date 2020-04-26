import 'url.dart';

class DecorationKey extends Url {
  final Url urltype;
  final value;
  final String key;
  DecorationKey({this.urltype, this.value, this.key});

  @override
  Map<String, dynamic> getBody() {
    Map<String, dynamic> actualBody = urltype.getBody();
    actualBody.addAll({key: value});
    return actualBody;
  }

  @override
  String getBaseUrl() {
    return urltype.getBaseUrl();
  }
}