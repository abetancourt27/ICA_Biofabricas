import 'package:flutter/material.dart';
import 'disp10_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage9 extends StatelessWidget {
  const DisposicionesPage9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obligaciones y prohibiciones'),
        backgroundColor: Color(0xFF5C0C0C), // Marrón oscuro
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado con icono y título
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5C0C0C),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.folder_open,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Obligaciones y\nprohibiciones',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 3. Elaboración
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '3. Elaboración:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Proceso de obtención (tipología)\n'
                        '- Composición (% peso/peso): materias primas utilizados (calidad, cantidad y origen)\n'
                        '- Equipamiento y herramientas utilizadas\n'
                        '- Pasos del proceso de obtención\n'
                        '- Puntos críticos en la elaboración\n'
                        '- Procesos de higienización\n'
                        '- Control de calidad del producto terminado',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 10, top: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFFC97B6A), // Marrón claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.precision_manufacturing,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 4. Utilización
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 10, top: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF0CC3A4), // Verde agua
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.error_outline,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '4: Utilización',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Proceso de obtención (tipología)\n'
                        '- Composición (% peso/peso): materias primas utilizados (calidad, cantidad y origen)\n'
                        '- Equipamiento y herramientas utilizadas\n'
                        '- Pasos del proceso de obtención\n'
                        '- Puntos críticos en la elaboración\n'
                        '- Procesos de higienización\n'
                        '- Control de calidad del producto terminado',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Botones funcionales
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context); // Botón anterior
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5C0C0C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  label: const Text(
                    'Anterior',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Botón siguiente: navega a disp10_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage10(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0CC3A4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  label: const Text(
                    'Siguiente',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}