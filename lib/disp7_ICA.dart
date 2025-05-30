import 'package:flutter/material.dart';
import 'disp8_ICA.dart'; // Importa la pantalla siguiente

class DisposicionesPage7 extends StatelessWidget {
  const DisposicionesPage7({super.key});

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
            // 1. Combinación
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1. Combinación:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Microorganismos + sustancias\n  (vegetal, animal o mineral.)\n- Presentes o de origen en la naturaleza',
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
                    color: Color(0xFF7BE65A), // Verde claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.join_full,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 2. Propiedades
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 10, top: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF1DBA3A), // Verde fuerte
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.medication_liquid,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '2. Propiedades:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Nutritivas para plantas\n- Controladoras de plagas y enfermedades\n- Son utilizadas como enmienda o sustratos.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 3. Procedimiento
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '3. Procedimiento:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- De tipo y escala artesanal\n- Con recursos locales en mayor medida\n- Con excepción de elementos exclusivos de otros lugares del país.',
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
                    color: Color(0xFF8CC6FF), // Azul claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.handyman,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // 4. Accesible
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 10, top: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF7BE6E6), // Celeste claro
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.account_tree,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '4. Accesible:',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '- Con accesos seguros y con facilidad a los usuarios finales',
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
                    // Botón siguiente: navega a disp8_ICA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisposicionesPage8(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7BE6E6),
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