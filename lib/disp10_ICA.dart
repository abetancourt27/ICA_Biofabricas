import 'package:flutter/material.dart';

class DisposicionesPage10 extends StatelessWidget {
  const DisposicionesPage10({super.key});

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
              'Notas de trabajo:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Cada producto debe tener un rotulado con:\n\n'
              'a. Información del productor\n'
              'b. Composición\n'
              'c. Nombre comercial\n'
              'd. Lugar de elaboración\n'
              'e. Precauciones de uso\n'
              'f. Riesgos bióticos y del ambiente\n'
              'g. Condiciones de almacenamiento\n'
              'h. Manejo de riesgos\n'
              'i. Disposición final de envases\n'
              'j. Contactos para consultas por intoxicaciones\n'
              'k. Vencimiento.',
              style: TextStyle(fontSize: 15),
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
                    'Consultar PDF: Requerimientos de instalaciones de biofábricas',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Botón solo hacia atrás
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}