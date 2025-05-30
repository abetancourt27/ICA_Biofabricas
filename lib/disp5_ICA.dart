import 'package:flutter/material.dart';
import 'disp6_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage5 extends StatelessWidget {
  const DisposicionesPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obligaciones y prohibiciones'),
        backgroundColor: Color(0xFF5C0C0C), // Color del encabezado
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
                    color: const Color(0xFF5C0C0C), // Marrón oscuro
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
            const SizedBox(height: 24),
            // Acceso a agua utilizada
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Acceso a agua utilizada en\nactividades de cultivo y\nactividades de cosecha.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CA6AD), // Azul grisáceo
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.water_drop,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Tener disponibilidad de una fuente de agua destinada exclusivamente a labores agrícolas, como el riego de cultivos, la preparación de biopreparados, y la limpieza de herramientas y equipos durante la cosecha, asegurando así un suministro adecuado para mantener las operaciones agrícolas eficientes y sostenibles.',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            // Consultar PDF
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C0C0C), // Marrón oscuro
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.picture_as_pdf,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Consultar PDF: Requisitos mínimos para la producción de biopreparados para uso agrícola.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
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
                    // Botón siguiente: navega a disp6_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage6(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8CA6AD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  icon: const Icon(Icons.arrow_forward, color: Colors.black),
                  label: const Text(
                    'Siguiente',
                    style: TextStyle(color: Colors.black),
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