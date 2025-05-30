import 'package:flutter/material.dart';
import 'definiciones_ICA.dart'; // Importa la pantalla de definiciones
import 'regbio1_ICA.dart'; // Importa la pantalla de Registra tu BioFábrica
import 'regprep1_ICA.dart'; // Importa la pantalla de Registra tus Biopreparados
import 'oblig1_ICA.dart'; // Importa la pantalla de Obligaciones y prohibiciones
import 'disp1_ICA.dart'; // Importa la pantalla de Disposiciones generales
import 'intro_ICA.dart'; // Importa la pantalla de introducción

class PanelPrincipal extends StatelessWidget {
  static const String routeName = '/panelPrincipal';

  const PanelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen de encabezado con título
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1421789665209-c9b2a435e3dc?auto=format&fit=crop&w=1080&q=80',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              // Título centrado horizontalmente
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: const Text(
                  'Panel principal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24, // Tamaño reducido para que se ajuste mejor
                    fontWeight: FontWeight.w600,
                    color: Colors.white, // Texto en blanco
                  ),
                ),
              ),
            ],
          ),
          // Espaciado entre el encabezado y los botones
          const SizedBox(height: 10),
          // Botones con etiquetas organizados en un Wrap
          Expanded(
            child: Center(
              child: Wrap(
                spacing: 16, // Espaciado horizontal entre botones
                runSpacing: 16, // Espaciado vertical entre botones
                alignment: WrapAlignment.center,
                children: [
                  _labeledIcon(
                    icon: Icons.new_label_sharp,
                    label: 'Registra tu BioFábrica',
                    color: const Color(0xFF002855), // Color actualizado
                    onTap: () {
                      // Navegar a Registra tu BioFábrica
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistraBiofabricaPage(),
                        ),
                      );
                    },
                  ),
                  _labeledIcon(
                    icon: Icons.forest,
                    label: 'Registra tus\nbiopreparados',
                    color: const Color(0xFF859160),
                    onTap: () {
                      // Navegar a Registra tus Biopreparados
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistraBiopreparadosPage(),
                        ),
                      );
                    },
                  ),
                  _labeledIcon(
                    icon: Icons.library_books_outlined,
                    label: 'Definiciones\ny obligaciones (norma)',
                    color: const Color(0xFF964C02),
                    onTap: () {
                      // Navegar a PantallaDefiniciones
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PantallaDefiniciones(),
                        ),
                      );
                    },
                  ),
                  _labeledIcon(
                    icon: Icons.dangerous_outlined,
                    label: 'Obligaciones\ny prohibiciones',
                    color: const Color(0xFFA28519),
                    onTap: () {
                      // Navegar a ObligacionesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ObligacionesPage(),
                        ),
                      );
                    },
                  ),
                  _labeledIcon(
                    icon: Icons.topic_rounded,
                    label: 'Disposiciones generales',
                    color: const Color(0xFF5C0C0C),
                    onTap: () {
                      // Navegar a DisposicionesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DisposicionesPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          // Botón de cerrar sesión centrado en la parte inferior
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navegar a la pantalla de introducción y limpiar el stack
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  'Cerrar sesión',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5C0C0C),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para botones con etiquetas
  Widget _labeledIcon({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 160, // Tamaño aumentado al doble
          height: 160,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16), // Bordes más redondeados
          ),
          child: IconButton(
            icon: Icon(icon, color: Colors.white, size: 80), // Ícono más grande
            onPressed: onTap,
          ),
        ),
        const SizedBox(height: 12), // Espaciado entre el ícono y el texto
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }
}
