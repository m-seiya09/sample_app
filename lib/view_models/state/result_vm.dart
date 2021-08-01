import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/models/article.dart';

part 'result_vm.freezed.dart';

@freezed
abstract class ResultVm with _$ResultVm {

  const factory ResultVm({
    @Default(0) int currentPage,
    @Default(<ArticleData>[]) List<ArticleData> articles,
  }) = ResultVmData;

}