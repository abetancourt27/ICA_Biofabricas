import 'package:flutter/material.dart';
import 'autoconsumo_ICA.dart'; // Importa la pantalla de Autoconsumo
import 'biofrabrica_ICA.dart'; // Importa la pantalla de Biofábrica
import 'biopreparados1_ICA.dart'; // Importa la pantalla de Biopreparados
import 'materiaprima_ICA.dart'; // Importa la pantalla de Materia Prima
import 'patogenosICA.dart'; // Importa la pantalla de Patógenos
import 'plaga_ICA.dart'; // Importa la pantalla de Plaga
import 'productor_ICA.dart'; // Importa la pantalla de Productor
import 'sustrato_ICA.dart'; // Importa la pantalla de Sustrato

class PantallaDefiniciones extends StatelessWidget {
  const PantallaDefiniciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Definiciones y Obligaciones(norma)'),
        backgroundColor: const Color(0xFF964C02), // Color del encabezado
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Wrap(
            spacing: 16, // Espaciado horizontal entre botones
            runSpacing: 16, // Espaciado vertical entre botones
            alignment: WrapAlignment.center,
            children: [
              _labeledIcon(
                icon: Icons.recycling_outlined,
                label: 'Autoconsumo',
                color: const Color(0xFF78503C),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AutoconsumoPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.factory_outlined,
                label: 'Biofábrica',
                color: const Color(0xFF548C0C),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BiofabricaPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.emoji_nature_outlined,
                label: 'Biopreparados',
                color: const Color(0xFF142B14),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BiopreparadosPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.category,
                label: 'Materia Prima',
                color: const Color(0xFFEBCCB7),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MateriaPrimaPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.blur_on,
                label: 'Patógenos',
                color: const Color(0xFF5C0C0C),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PatogenosaPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.bug_report_outlined,
                label: 'Plaga',
                color: const Color(0xFFE26C29),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PlagaPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.groups_2_outlined,
                label: 'Productor',
                color: const Color(0xFFB3A533),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductorPage(),
                    ),
                  );
                },
              ),
              _labeledIcon(
                icon: Icons.grass,
                label: 'Sustrato',
                color: const Color(0xFFB4C4D4),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SustratoPage(), // Navega a la pantalla de Sustrato
                    ),
                  );
                },
              ),
            ],
          ),
        ),
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
          width: 200, // Tamaño aumentado 2.5 veces
          height: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16), // Bordes redondeados
          ),
          child: IconButton(
            icon: Icon(icon, color: Colors.white, size: 100), // Ícono más grande
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
