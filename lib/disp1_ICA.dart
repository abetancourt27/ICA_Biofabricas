import 'package:flutter/material.dart';
import 'disp2_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage extends StatelessWidget {
  const DisposicionesPage({super.key});

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
            // Control oficial icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF859160), // Verde oliva
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.open_with,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Control oficial:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Texto principal
            const Text(
              'El ICA será la entidad nacional competente para supervisar el cumplimiento de la presente resolución. Por lo que sus funcionarios en el ejercicio de las funciones de inspección, vigilancia y control tendrán el carácter de inspectores de Policía Sanitaria y gozarán del apoyo y protección de las autoridades civiles y militares para el cumplimiento de sus funciones.\n\n'
              'Desde el otorgamiento del registro, el ICA en cualquier momento podrá realizar visitas de inspección, vigilancia y control para verificar el cumplimiento de las disposiciones establecidas en la presente resolución.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            // Botones funcionales
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Acción para el primer botón (anterior)
                    Navigator.pop(context);
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
                    // Botón siguiente: navega a disp2_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage2(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF859160),
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