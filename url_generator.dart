import 'url/based_url.dart';
import 'url/decoration_key.dart';
import 'url/url.dart';

class UrlGenerator {
  String urlString;
  Map<String, dynamic> decorators;
  UrlGenerator({this.urlString, this.decorators});

  call() {
    Url url = BasedUrl(urlString);
    decorators.forEach((key, value) {
      url = DecorationKey(urltype: url, key: key, value: value);
    });
    return _getFullUrl(url);
  }

  String _getFullUrl(Url url) {
    String baseUrl = url.getBaseUrl();
    final Map<String, dynamic> data = url.getBody();
    data.forEach((key, value) => baseUrl += "&$key=$value");
    return baseUrl;
  }
}
