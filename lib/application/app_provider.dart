import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class AppNotifier extends StateNotifier<String> {
  AppNotifier() : super('');

  void openURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}

final appProvider = StateNotifierProvider<AppNotifier, String>((_) {
  return AppNotifier();
});
