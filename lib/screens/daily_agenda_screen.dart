import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kids_clouds/models/child.dart';
import 'package:kids_clouds/models/event.dart';
import 'package:kids_clouds/providers/category_provider.dart';
import 'package:kids_clouds/providers/children_provider.dart';
import 'package:kids_clouds/providers/filtered_events_provider.dart';
import 'package:kids_clouds/providers/selected_child_provider.dart';


class DailyAgendaScreen extends ConsumerWidget {
  const DailyAgendaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final children = ref.watch(childrenProvider);
    final selectedChildId = ref.watch(selectedChildProvider);
    final filteredEvents = ref.watch(filteredEventsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda diaria'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Luis López',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            DropdownButton<String?>(
              value: selectedChildId,
              hint: const Text('Seleccionar hijo'),
              isExpanded: true,
              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text('Todos los hijos'),
                ),
                ...children.map(
                  (child) => DropdownMenuItem<String?>(
                    value: child.id,
                    child: Text(child.name),
                  ),
                ),
              ],
              onChanged: (value) => ref.read(selectedChildProvider.notifier).select(value),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryButton(ref, 'Alimentación'),
                  categoryButton(ref, 'Siestas'),
                  categoryButton(ref, 'Actividades'),
                  categoryButton(ref, 'Deposiciones'),
                  categoryButton(ref, 'Observaciones'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: filteredEvents.isEmpty
                  ? const Center(child: Text('No hay eventos'))
                  : ListView.builder(
                      itemCount: filteredEvents.length,
                      itemBuilder: (context, index) {
                        final event = filteredEvents[index];
                        final child = children.firstWhere((c) => c.id == event.childId);
                        return EventCard(event: event, child: child);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryButton(WidgetRef ref, String category) {
    final selected = ref.watch(selectedCategoryProvider);
    final isSelected = selected == category;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(category),
        selected: isSelected,
        onSelected: (_) => ref.read(selectedCategoryProvider.notifier).select(isSelected ? null : category),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final Event event;
  final Child child;

  const EventCard({super.key, required this.event, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(child.imageUrl),
        ),
        title: Text(child.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(event.description),
            Text(
              event.time,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
