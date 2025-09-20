import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import '../widgets/profile_img.dart';

class DatosPersonales extends StatelessWidget {
  const DatosPersonales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos Personales"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Center(
              child: ProfileImage(
                imageUrl: "https://i.pravatar.cc/300?img=5",
                radius: 70,
              ),
            ),
            const SizedBox(height: 20),

            const InfoCard(
              title: "Nombres",
              value: "Juan Carlos",
              icon: Icons.person,
            ),
            const InfoCard(
              title: "Apellidos",
              value: "Pérez Gómez",
              icon: Icons.badge,
            ),
            const InfoCard(
              title: "Dirección",
              value: "Calle 123 #45-67",
              icon: Icons.home,
            ),
            const InfoCard(
              title: "Teléfono",
              value: "300 123 4567",
              icon: Icons.phone,
            ),
            const InfoCard(
              title: "Email",
              value: "juan@mail.com",
              icon: Icons.email,
            ),
          ],
        ),
      ),
    );
  }
}
