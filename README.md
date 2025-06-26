# kids_clouds

A new Flutter project.

## ¿Qué incluye?
- Selección de hijo (con dropdown)
- Filtro por categorías (ChoiceChips)
- Tarjetas visuales con eventos por niño/a
- Responsive: pensado para móvil y adaptable a escritorio
- Datos mockeados (mock_data.dart)
- Carga de imágenes desde RandomUser API

## Paquetes utilizados
- `flutter_riverpod` – gestión de estado con Riverpod
- `riverpod_annotation` y `riverpod_generator` – anotaciones y generación automática de código
- `go_router` – navegación declarativa
- `json_annotation` y `json_serializable` – serialización de modelos
- `build_runner` – generación de código
- `flutter_test` – pruebas automatizadas

## Instalación
```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs  / Recomendado
flutter run
