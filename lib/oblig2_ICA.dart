import 'package:flutter/material.dart';

class ProhibicionesPage extends StatelessWidget {
  const ProhibicionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obligaciones y prohibiciones'),
        backgroundColor: Color(0xFFA28519), // Color del encabezado
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
            // Prohibiciones icono y subtítulo
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF1616), // Rojo
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Prohibiciones:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            // Lista de prohibiciones
            const Text(
              '1. Comercializar biopreparados sin registro ICA.\n\n'
              '2. Incluir dentro de la producción de los biopreparados agrícolas, moléculas consideradas como plaguicidas químicos de uso agrícola.\n\n'
              '3. Hacer publicidad a productos usando el nombre del ICA o sus signos distintivos para fines de promoción comercial.\n\n'
              '4. Incluir información no aprobada por el ICA en las etiquetas o la publicidad de productos en prensa, radio, hojas volantes, plegables u otro medio de comunicación.\n\n'
              '5. Producir biopreparados para uso agrícola utilizando procedimientos o materiales que contengan organismos patógenos para el ambiente, la salud humana o la sanidad agropecuaria.\n',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}