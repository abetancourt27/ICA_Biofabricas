import 'package:flutter/material.dart';
import 'oblig2_ICA.dart'; // Importa la pantalla de Prohibiciones

class ObligacionesPage extends StatelessWidget {
  const ObligacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obligaciones y prohibiciones'),
        backgroundColor: const Color(0xFFA28519), // Color del encabezado
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
                    color: const Color(0xFFA28519), // Mostaza
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.cancel_outlined,
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
            // Obligaciones icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFB388C3), // Lila
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.checklist_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Obligaciones:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Lista de obligaciones
            const Text(
              '1. Realizar seguimiento de sus productos garantizando su calidad, eficacia e inocuidad.\n\n'
              '2. Realizar los análisis para control interno de la calidad y tomar acciones sobre la producción.\n\n'
              '3. Enviar antes del 30 de abril de cada año el reporte de producción de sus productos del año inmediatamente anterior.\n\n'
              '4. Cumplir y mantener las condiciones técnicas autorizadas para la producción y evaluación de los biopreparados, según el caso.\n',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            // Nota de trabajo
            const Text(
              'Nota de trabajo: Tenga en cuenta de forma integral todas las obligaciones de la norma, y lleve un registro de todos los procesos, haciendo un esquema de registro para tener identificado cada proceso, material, maquinaria. Esto permite responder a los requerimientos de las obligaciones y las prohibiciones.',
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            // Botón flecha
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProhibicionesPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA28519),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}