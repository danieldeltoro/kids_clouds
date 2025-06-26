import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_child_provider.g.dart';

@riverpod
class SelectedChild extends _$SelectedChild {
  @override
  String? build() => null;

  void select(String? childId) => state = childId;
}
