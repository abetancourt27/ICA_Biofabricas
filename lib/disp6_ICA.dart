import 'package:flutter/material.dart';
import 'disp7_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage6 extends StatelessWidget {
  const DisposicionesPage6({super.key});

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
            // Generalidades icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF7BE65A), // Verde claro
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.all_inclusive,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Generalidades:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Se pueden usar materiales disponibles propios de las fincas o unidades productivas que se puedan reutilizar, como recipientes, mangueras, entre otros, siempre y cuando no sean envases donde se hayan contenido insumos agrícolas como plaguicidas.\n\n'
              'El productor deberá almacenar la información del biopreparado por un periodo de 5 años y garantizar la ausencia de patógenos en el producto elaborado.\n\n'
              'Las prácticas de fabricación deben realizarse a partir de material conocido y propio del predio, cumpliendo las siguientes condiciones:',
              style: TextStyle(
                fontSize: 15,
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
                    // Botón siguiente: navega a disp7_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage7(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7BE65A),
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