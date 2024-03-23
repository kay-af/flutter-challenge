import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_data.freezed.dart';
part 'pagination_data.g.dart';

@freezed
class PaginationData with _$PaginationData {
  factory PaginationData({
    required int total_count,
    required int count,
    required int offset,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) => _$PaginationDataFromJson(json);
}
