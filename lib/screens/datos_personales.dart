import 'package:flutter/material.dart';

class DatosPersonales extends StatelessWidget {
  const DatosPersonales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos Personales"),
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
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=5",
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

                const Text(
                  "Desarrollador Backend",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  "Apasionado por el desarrollo de software, con experiencia en Python, Flask y MongoDB. "
                  "Interesado en proyectos de innovación tecnológica.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),

                const Divider(height: 30, thickness: 1),

                Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.blue),
                      title: Text("Juan Carlos"),
                      subtitle: Text("Nombre"),
                    ),
                    ListTile(
                      leading: Icon(Icons.badge, color: Colors.blue),
                      title: Text("Pérez Gómez"),
                      subtitle: Text("Apellidos"),
                    ),
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.blue),
                      title: Text("Calle 123 #45-67"),
                      subtitle: Text("Dirección"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text("+57 300 123 4567"),
                      subtitle: Text("Teléfono"),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text("juan@mail.com"),
                      subtitle: Text("Correo"),
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
