import 'package:scroll_to_index/scroll_to_index.dart';

void scollToIndex(int index, AutoScrollController controller) {
  controller.scrollToIndex(
    index,
    duration: const Duration(
      seconds: 2,
    ),
    preferPosition: AutoScrollPosition.begin,
  );
}
