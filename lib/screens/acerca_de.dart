import 'package:flutter/material.dart';

class AcercaDeView extends StatelessWidget {
  const AcercaDeView({super.key});

  @override
  Widget build(BuildContext context) {
    const nombre = "Juan Carlos";
    const apellido = "Pérez Gómez";
    const direccion = "Calle 123 #45-67";
    const telefono = "+57 300 123 4567";
    const correo = "juan@mail.com";
    const rol = "Desarrollador Backend";
    const bio =
        "Apasionado por el desarrollo de software, con experiencia en Python, Flask y MongoDB. Interesado en proyectos de innovación tecnológica.";

    const bachiller = [
      {"titulo": "Bachiller Académico", "institucion": "Colegio Nacional", "anio": "2015"},
    ];
    const tecnologo = [
      {"titulo": "Tecnólogo en Sistemas", "institucion": "SENA", "anio": "2018"},
      {"titulo": "Tecnólogo en Análisis de Datos", "institucion": "Politécnico", "anio": "2019"},
    ];
    const profesion = [
      {"titulo": "Ingeniería de Sistemas", "institucion": "Universidad Nacional", "anio": "2022"},
    ];
    const cursos = [
      {"titulo": "Flutter Básico", "institucion": "Udemy", "anio": "2023"},
      {"titulo": "React Avanzado", "institucion": "Platzi", "anio": "2023"},
      {"titulo": "Python para Data Science", "institucion": "Coursera", "anio": "2022"},
      {"titulo": "Bases de Datos con PostgreSQL", "institucion": "SENA", "anio": "2021"},
    ];

    const empleos = [
      {
        "empresa": "Google",
        "cargo": "Desarrollador Backend",
        "inicio": "2019",
        "fin": "2021",
        "descripcion": "Encargado de desarrollar aplicaciones web escalables en Flask y MongoDB."
      },
      {
        "empresa": "SENA",
        "cargo": "Instructor de Programación",
        "inicio": "2021",
        "fin": "2022",
        "descripcion": "Dicté cursos de Python, bases de datos y desarrollo de aplicaciones web."
      },
      {
        "empresa": "Microsoft",
        "cargo": "Ingeniero de Software",
        "inicio": "2022",
        "fin": "Actualidad",
        "descripcion": "Trabajo en proyectos de integración de servicios en la nube con Azure."
      },
    ];

    Widget buildStudySection(String title, List<Map<String, String>> data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 8),
          Column(
            children: data
                .map(
                  (e) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: const Icon(Icons.school, color: Colors.blue),
                      title: Text(e["titulo"] ?? ""),
                      subtitle: Text("${e["institucion"]} - ${e["anio"]}"),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
        ],
      );
    }

    Widget buildJobSection(List<Map<String, String>> data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data.map((empleo) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    empleo["empresa"] ?? "",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Cargo: ${empleo["cargo"]}",
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Periodo: ${empleo["inicio"]} - ${empleo["fin"]}",
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    empleo["descripcion"] ?? "",
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Acerca de")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=5"),
                    ),
                    const SizedBox(height: 12),
                    Text("$nombre $apellido", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    Text(rol, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                    const SizedBox(height: 12),
                    Text(bio, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
                    const Divider(height: 24, thickness: 1),
                    ListTile(leading: const Icon(Icons.person, color: Colors.blue), title: Text(nombre), subtitle: const Text("Nombre")),
                    ListTile(leading: const Icon(Icons.badge, color: Colors.blue), title: Text(apellido), subtitle: const Text("Apellidos")),
                    ListTile(leading: const Icon(Icons.home, color: Colors.blue), title: Text(direccion), subtitle: const Text("Dirección")),
                    ListTile(leading: const Icon(Icons.phone, color: Colors.blue), title: Text(telefono), subtitle: const Text("Teléfono")),
                    ListTile(leading: const Icon(Icons.email, color: Colors.blue), title: Text(correo), subtitle: const Text("Correo")),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            buildStudySection("📘 Bachiller", bachiller),
            buildStudySection("💻 Tecnólogo", tecnologo),
            buildStudySection("🎓 Profesión", profesion),
            buildStudySection("📚 Cursos", cursos),

            const Text("💼 Experiencia Laboral", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
            const SizedBox(height: 8),
            buildJobSection(empleos),
          ],
        ),
      ),
    );
  }
}
