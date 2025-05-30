import 'package:flutter/material.dart';

class RegistraBiofabricaPage extends StatelessWidget {
  const RegistraBiofabricaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registra tu BioFábrica'),
        backgroundColor: const Color(0xFF002855), // Color del encabezado
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título principal
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF002855), // Fondo azul oscuro
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Registra tu BioFábrica',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Instrucciones
            const Text(
              'Instrucciones:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Paso 1
            _instructionStep(
              icon: Icons.assignment_outlined,
              color: Color(0xFFFFD700), // Amarillo
              step: '1. Solicitud de Registro:',
              description:
                  'Cumpliendo y enviando la documentación requerida.',
            ),
            const SizedBox(height: 16),
            // Paso 2
            _instructionStep(
              icon: Icons.calendar_today_outlined,
              color: Color(0xFFBDB76B), // Verde oliva
              step: '2. Visita Técnica:',
              description:
                  'Programada 15 días después de tener una solicitud de registro completa.',
            ),
            const SizedBox(height: 16),
            // Paso 3
            _instructionStep(
              icon: Icons.record_voice_over_outlined,
              color: Color(0xFFFFA07A), // Salmón
              step: '3. Emisión del concepto:',
              description:
                  'Puede ser: a) Favorable, b) Aplazado o c) Rechazado.',
            ),
            const SizedBox(height: 16),
            // Paso 4
            _instructionStep(
              icon: Icons.receipt_long_outlined,
              color: Color(0xFF4682B4), // Azul acero
              step: '4. Expedición de registro:',
              description:
                  'En el caso de concepto favorable en 20 días hábiles se hará oficial con una duración de 5 años.',
            ),
            const SizedBox(height: 16),
            // Paso 5
            _instructionStep(
              icon: Icons.fact_check_outlined,
              color: Color(0xFF8B4513), // Marrón
              step: '5. Control:',
              description:
                  'El ICA cuando lo considere, verificará el cumplimiento de los requisitos bajo los cuales fueron otorgados.',
            ),
          ],
        ),
      ),
    );
  }

  // Widget para cada paso de las instrucciones
  Widget _instructionStep({
    required IconData icon,
    required Color color,
    required String step,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                step,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}