import 'package:ifit/feature/exclusive_studio/domain/exclusive_studio_entity.dart';

class ExclusiveStudioState {
  final bool loading;
  final ExclusiveStudioListEntity? exclusiveStudioList;

  const ExclusiveStudioState({required this.loading, this.exclusiveStudioList});

  factory ExclusiveStudioState.initial() =>
      const ExclusiveStudioState(loading: false);

  ExclusiveStudioState copyWith({
    bool? loading,
    ExclusiveStudioListEntity? exclusiveStudioList,
  }) => ExclusiveStudioState(
    loading: loading ?? this.loading,
    exclusiveStudioList: exclusiveStudioList ?? this.exclusiveStudioList,
  );
}
