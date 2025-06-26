import 'package:kids_clouds/models/event.dart';
import 'package:kids_clouds/utils/mock_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'selected_child_provider.dart';
import 'category_provider.dart';

part 'filtered_events_provider.g.dart';

@riverpod
List<Event> filteredEvents( ref) {
  final selectedChild = ref.watch(selectedChildProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);

  return MockData.events.where((event) {
    final matchChild = selectedChild == null || event.childId == selectedChild;
    final matchCategory = selectedCategory == null || event.category == selectedCategory;
    return matchChild && matchCategory;
  }).toList();
}
