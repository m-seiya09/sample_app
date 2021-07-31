// 項目に対するバリデーション
class TextValidator {

  static String? validate(String? value)
  {
    String? message;

    if (value == null || value.isEmpty) {
      message = '入力されていません';
    }
    print(message);
    return message;
  }
}