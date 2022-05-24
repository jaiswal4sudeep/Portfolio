import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ScrollNotifier extends StateNotifier<void> {
  ScrollNotifier() : super(null);

  void scollToIndex(int index, AutoScrollController controller) {
    controller.scrollToIndex(
      index,
      duration: const Duration(
        seconds: 2,
      ),
      preferPosition: AutoScrollPosition.begin,
    );
  }
}

final scrollProvider = StateNotifierProvider<ScrollNotifier, void>((_) {
  return ScrollNotifier();
});
