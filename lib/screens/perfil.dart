import 'package:flutter/material.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Foto de perfil
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=3", // 🔗 URL de ejemplo
                  ),
                ),
                const SizedBox(height: 16),

                // Nombre completo
                const Text(
                  "Juan Carlos Pérez Gómez",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Profesión / rol
                const Text(
                  "Desarrollador Backend",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 16),

                // Biografía
                const Text(
                  "Apasionado por el desarrollo de software, con experiencia en Python, Flask y MongoDB. "
                  "Interesado en proyectos de innovación tecnológica.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),

                const Divider(height: 30, thickness: 1),

                // Info clave con íconos
                Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.blue),
                      title: Text("Cali, Colombia"),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text("juan@mail.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text("+57 300 123 4567"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
