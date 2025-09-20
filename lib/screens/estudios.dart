import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class Estudios extends StatelessWidget {
  const Estudios({super.key});

  final List<Map<String, String>> bachiller = const [
    {"titulo": "Bachiller Académico", "institucion": "Colegio Nacional", "anio": "2015"},
  ];

  final List<Map<String, String>> tecnologo = const [
    {"titulo": "Tecnólogo en Sistemas", "institucion": "SENA", "anio": "2018"},
    {"titulo": "Tecnólogo en Análisis de Datos", "institucion": "Politécnico", "anio": "2019"},
  ];

  final List<Map<String, String>> profesion = const [
    {"titulo": "Ingeniería de Sistemas", "institucion": "Universidad Nacional", "anio": "2022"},
  ];

  final List<Map<String, String>> cursos = const [
    {"titulo": "Flutter Básico", "institucion": "Udemy", "anio": "2023"},
    {"titulo": "React Avanzado", "institucion": "Platzi", "anio": "2023"},
    {"titulo": "Python para Data Science", "institucion": "Coursera", "anio": "2022"},
    {"titulo": "Bases de Datos con PostgreSQL", "institucion": "SENA", "anio": "2021"},
  ];

  Widget buildSection(String title, List<Map<String, String>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: data
              .map(
                (e) => InfoCard(
                  title: e["titulo"] ?? "",
                  value: "${e["institucion"]} - ${e["anio"]}",
                  icon: Icons.school,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Estudios"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSection("📘 Bachiller", bachiller),
            buildSection("💻 Tecnólogo", tecnologo),
            buildSection("🎓 Profesión", profesion),
            buildSection("📚 Cursos", cursos),
          ],
        ),
      ),
    );
  }
}
