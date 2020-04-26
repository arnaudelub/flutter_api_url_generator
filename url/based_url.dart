import 'url.dart';

class BasedUrl implements Url {
  final String baseUrl;
  BasedUrl(this.baseUrl);

  @override
  Map<String, dynamic> body = {};
  @override
  String getBaseUrl() {
    return baseUrl;
  }
  

  @override
  Map<String, dynamic> getBody() {
    return body;
  }
}