import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomIndexProvider = 
StateNotifierProvider<BottomIndexProvider, int>((ref) => BottomIndexProvider());

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