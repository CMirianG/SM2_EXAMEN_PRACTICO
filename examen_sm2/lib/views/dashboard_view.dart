import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'exportar_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard de Asistencia"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Estadísticas de Asistencia",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: SizedBox(
                height: 250,
                child: BarChart(
                  BarChartData(
                    titlesData: FlTitlesData(show: true),
                    barGroups: [
                      BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 8, width: 18)]),
                      BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 5, width: 18)]),
                      BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 6, width: 18)]),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.file_download),
                label: const Text("Ir a Exportar Reportes"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ExportarView()),
                  );
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF0F2F5),
    );
  }
}
