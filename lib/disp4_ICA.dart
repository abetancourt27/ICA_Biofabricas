import 'package:flutter/material.dart';
import 'disp5_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage4 extends StatelessWidget {
  const DisposicionesPage4({super.key});

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
            // Estructura con techo y paredes
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
                const Expanded(
                  child: Text(
                    'Estructura con techo y paredes\ncon buena ventilación, para\nproteger los productos de\ncondiciones ambientales',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Una estructura diseñada para proteger los biopreparados de condiciones climáticas adversas, como lluvia, sol intenso y viento, mediante un techo y paredes que los aíslan del ambiente externo. Además, debe contar con una ventilación adecuada que permita la circulación de aire, evitando acumulación de humedad, olores o gases, garantizando así un entorno óptimo para su almacenamiento y manejo.',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 18),
            // Piso de cemento y desnivel
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
                const Expanded(
                  child: Text(
                    'Piso de cemento y desnivel\npara facilitar el lavado\ny la limpieza.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Una estructura diseñada para proteger los biopreparados de condiciones climáticas adversas, como lluvia, sol intenso y viento, mediante un techo y paredes que los aíslan del ambiente externo. Además, debe contar con una ventilación adecuada que permita la circulación de aire, evitando acumulación de humedad, olores o gases, garantizando así un entorno óptimo para su almacenamiento y manejo.',
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
                    // Botón siguiente: navega a disp5_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage5(),
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