import '../models/asistencia.dart';

class AsistenciaController {
  /// Simula los registros de asistencia
  List<Asistencia> obtenerAsistencias() {
    return [
      Asistencia("Carlos", "2025-05-21", "Presente"),
      Asistencia("María", "2025-05-21", "Tarde"),
      Asistencia("Luis", "2025-05-21", "Ausente"),
      Asistencia("Ana", "2025-05-21", "Presente"),
    ];
  }

  /// Agrupa la cantidad de estados por tipo
  Map<String, int> obtenerEstadisticas() {
    final registros = obtenerAsistencias();
    final Map<String, int> resumen = {
      "Presente": 0,
      "Tarde": 0,
      "Ausente": 0,
    };

    for (var a in registros) {
      resumen[a.estado] = (resumen[a.estado] ?? 0) + 1;
    }

    return resumen;
  }
}
