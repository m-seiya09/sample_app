import 'package:state_notifier/state_notifier.dart';

// BottomNavigationBarのindexを管理する
class BottomIndexProvider extends StateNotifier<int> {

  BottomIndexProvider(): super(0);

  /* ===== メソッド ===== */
  void changeIndex(int index)
  {
    /**
     * 現在のindexを変更する
     */
    if (this.state != index) this.state = index;
  }
}