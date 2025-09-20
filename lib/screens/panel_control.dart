import 'package:flutter/material.dart';
import 'datos_personales.dart';
import 'estudios.dart';
import 'empleos.dart';

class PanelControl extends StatelessWidget {
  const PanelControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panel de Control"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Datos Personales"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DatosPersonales()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("Estudios"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Estudios()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text("Empleos"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Empleos()),
              );
            },
          ),
        ],
      ),
    );
  }
}
