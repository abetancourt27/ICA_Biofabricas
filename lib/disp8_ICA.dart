import 'package:flutter/material.dart';
import 'disp9_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage8 extends StatelessWidget {
  const DisposicionesPage8({super.key});

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
            const Text(
              'Para la presentación de la solicitud de registro de un biopreparado se debe allegar la siguiente información:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 18),
            // 1. Identificación
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1. Identificación:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Nombre común\n- Acción agronómica (con evidencias científicas de revistas indexadas).\n- Principio activo, aporte de nutrientes.',
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
                    color: Color(0xFF7B5C3B), // Marrón claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.description,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 2. Indicador de calidad
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 10, top: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF0A3B4C), // Azul oscuro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.account_tree,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '2: Indicador de calidad',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Información físico-química.\n'
                        '- Datos microbiológicos: Ausencia de Salmonella spp, Coliformes totales < 1000 UFC/g o ml, E. coli ausente.\n'
                        '- Eficacia agronómica mediante el resultado de una prueba de campo, para el control de plagas se debe indicar cual es el blanco biológico evaluado.',
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
                    // Botón siguiente: navega a disp9_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage9(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0A3B4C),
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