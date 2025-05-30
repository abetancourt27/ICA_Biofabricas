import 'package:flutter/material.dart';
import 'disp3_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage2 extends StatelessWidget {
  const DisposicionesPage2({super.key});

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
            // Sanciones icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2C230), // Amarillo
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.request_quote,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Sanciones:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Texto de sanciones
            const Text(
              'Además de las sanciones consagradas en los artículos anteriores, el incumplimiento de cualquiera de las disposiciones establecidas en la presente resolución será sancionado de conformidad con lo establecido en los artículos 156 y 157 de la Ley 1955 de 2019, sin perjuicio de las acciones civiles y penales a que haya lugar.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            // Anexos icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2C230), // Amarillo
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.request_quote,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Anexos:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Hacen parte integral de la presente resolución los siguientes documentos:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            // Lista de anexos
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C0C0C), // Marrón oscuro
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.description_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Requerimientos de instalaciones de biofábricas',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C0C0C), // Marrón oscuro
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.description_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Requisitos mínimos para la producción de biopreparados para uso agrícola.',
                    style: TextStyle(fontSize: 15),
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
                    // Botón siguiente: navega a disp3_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage3(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF2C230),
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