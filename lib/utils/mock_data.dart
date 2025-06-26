import 'package:kids_clouds/models/child.dart';
import 'package:kids_clouds/models/event.dart';

class MockData {
  static final List<Child> children = [
    Child(
      id: '1',
      name: 'Martina Gómez',
      imageUrl: 'https://randomuser.me/api/portraits/med/women/1.jpg',
    ),
    Child(
      id: '2',
      name: 'Lucas Fernández',
      imageUrl: 'https://randomuser.me/api/portraits/med/men/2.jpg',
    ),
    Child(
      id: '3',
      name: 'Sofía Martínez',
      imageUrl: 'https://randomuser.me/api/portraits/med/women/3.jpg',
    ),
  ];

  static final List<Event> events = [
    Event(
      id: 'e1',
      childId: '1',
      category: 'Alimentación',
      time: '08:30',
      description: 'Desayunó cereales y leche.',
    ),
    Event(
      id: 'e2',
      childId: '1',
      category: 'Actividades',
      time: '10:00',
      description: 'Jugó con bloques de construcción.',
    ),
    Event(
      id: 'e3',
      childId: '2',
      category: 'Siestas',
      time: '12:00',
      description: 'Durmió una siesta de 1 hora.',
    ),
    Event(
      id: 'e4',
      childId: '3',
      category: 'Deposiciones',
      time: '09:15',
      description: 'Deposición normal.',
    ),
    Event(
      id: 'e5',
      childId: '3',
      category: 'Observaciones',
      time: '13:00',
      description: 'Estuvo un poco irritable.',
    ),
  ];
}