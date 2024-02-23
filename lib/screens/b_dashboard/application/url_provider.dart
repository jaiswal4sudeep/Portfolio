import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlNotifier extends StateNotifier<String> {
  UrlNotifier() : super('');

  void openURL(String url) async {
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      }
    } catch (e) {
      throw UnimplementedError();
    }
  }
}

final urlProvider = StateNotifierProvider<UrlNotifier, String>((_) {
  return UrlNotifier();
});

