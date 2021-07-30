
// 項目に対するバリデーション
class TextValidator {

  static Map<String, dynamic> validate(String value)
  {
    final Map<String, int> status = {
      'success': 1,
      'fail': 0
    };
    // 結果コード初期値
    Map<String, dynamic> result = {
      'status': status['success'],
      'message': null
    };

    if (value.isEmpty) {
      result['status'] = status['fail'];
      result['message'] = '入力されていません';
    }

    return result;
  }
}