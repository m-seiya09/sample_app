import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {

  factory SearchState({
    @Default(0) int currentIndex,
    @Default(null) String? keyWord,
  }) = SearchStateData;
}