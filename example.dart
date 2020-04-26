import 'url_generator.dart';

void main() {
  final baseUrl = "https://example.com";
  final urlGenerator = UrlGenerator(urlString:baseUrl, decorators:{'app_key': 105});
  print(urlGenerator());
}