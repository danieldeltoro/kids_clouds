import 'package:kids_clouds/models/child.dart';
import 'package:kids_clouds/utils/mock_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'children_provider.g.dart';

@riverpod
List<Child> children( ref) => MockData.children;
