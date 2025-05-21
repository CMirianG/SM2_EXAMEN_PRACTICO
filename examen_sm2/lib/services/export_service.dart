import 'dart:io';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';

class ExportService {
  final List<List<String>> _datos = [
    ["Nombre", "Fecha", "Estado"],
    ["Carlos", "2025-05-21", "Presente"],
    ["María", "2025-05-21", "Tarde"],
    ["Luis", "2025-05-21", "Ausente"],
  ];

  /// Exporta datos a formato CSV
  Future<void> exportarCSV() async {
    String csvData = const ListToCsvConverter().convert(_datos);
    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/asistencia.csv";
    final file = File(path);
    await file.writeAsString(csvData);
    print("CSV exportado en: $path");
  }

  /// Exporta datos a formato Excel
  Future<void> exportarExcel() async {
    final excel = Excel.createExcel();
    final sheet = excel['Asistencia'];

    for (var fila in _datos) {
      sheet.appendRow(fila.map((e) => TextCellValue(e)).toList());
    }

    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/asistencia.xlsx";
    final file = File(path);
    await file.writeAsBytes(excel.encode()!);
    print("Excel exportado en: $path");
  }
}
