import 'package:flutter/material.dart';
import 'disp4_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage3 extends StatelessWidget {
  const DisposicionesPage3({super.key});

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
            // Las instalaciones icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFB3E0FC), // Celeste
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.factory,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Las instalaciones:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Las instalaciones de producción deben estar ubicadas al interior de la propiedad rural, no podrán estar ubicadas total o parcialmente en una zona de reserva natural o dentro del Sistema Nacional de Áreas Protegidas (SINAP) además de ubicarse en una zona separada de la vivienda. Los requisitos generales son los siguientes:',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 18),
            // Lugar de fácil acceso icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF4CA6A8), // Verde azulado
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.my_location,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Lugar de fácil acceso',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Un lugar de fácil acceso es aquel ubicado estratégicamente cerca de caminos principales o rutas transitables, con infraestructura adecuada para garantizar un ingreso rápido y sencillo, incluso en condiciones adversas. Debe facilitar el acceso a personas, vehículos y materiales, contando con servicios cercanos como agua y energía, y estar adaptado para diferentes necesidades, optimizando tiempo y recursos.',
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
                    // Botón siguiente: navega a disp4_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage4(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB3E0FC),
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