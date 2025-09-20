import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class Empleos extends StatelessWidget {
  const Empleos({super.key});

  // 👇 Datos simulados (List<Map>)
  final List<Map<String, String>> empleos = const [
    {
      "empresa": "Google",
      "cargo": "Desarrollador Backend",
      "inicio": "2019",
      "fin": "2021",
      "descripcion":
          "Encargado de desarrollar aplicaciones web escalables en Flask y MongoDB."
    },
    {
      "empresa": "SENA",
      "cargo": "Instructor de Programación",
      "inicio": "2021",
      "fin": "2022",
      "descripcion":
          "Dicté cursos de Python, bases de datos y desarrollo de aplicaciones web."
    },
    {
      "empresa": "Microsoft",
      "cargo": "Ingeniero de Software",
      "inicio": "2022",
      "fin": "Actualidad",
      "descripcion":
          "Trabajo en proyectos de integración de servicios en la nube con Azure."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experiencia Laboral"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: empleos.length,
        itemBuilder: (context, index) {
          final empleo = empleos[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Empresa
                  Text(
                    empleo["empresa"] ?? "",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Cargo
                  InfoCard(
                    title: "Cargo",
                    value: empleo["cargo"] ?? "",
                    icon: Icons.work,
                  ),

                  // Fechas
                  InfoCard(
                    title: "Periodo",
                    value: "${empleo["inicio"]} - ${empleo["fin"]}",
                    icon: Icons.calendar_today,
                  ),

                  // Descripción
                  const SizedBox(height: 8),
                  Text(
                    empleo["descripcion"] ?? "",
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
