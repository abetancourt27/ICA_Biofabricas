import 'package:flutter/material.dart';
import 'regprep2_ICA.dart'; // Importa la pantalla RegistraBiopreparadosPage2

class RegistraBiopreparadosPage extends StatelessWidget {
  const RegistraBiopreparadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registra tus Biopreparados'),
        backgroundColor: const Color(0xFF859160), // Color del encabezado
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
                    color: const Color(0xFF859160), // Fondo verde oliva
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.forest,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Registra tus biopreparados',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Descripción
            const Text(
              'Los biopreparados de uso agrícola que se fabriquen en las biofábricas, adicional al registro de esta, para poder ser comercializados en el territorio nacional deberá tener su respectivo registro de venta ICA.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 24),
            // Paso 1
            _instructionStep(
              icon: Icons.description_outlined,
              color: Color(0xFFFF7043), // Naranja
              step: '1. Oficio:',
              description:
                  'Solicitud de registro a través de un oficio indicando el tipo de biopreparado.',
            ),
            const SizedBox(height: 16),
            // Paso 2
            _instructionStep(
              icon: Icons.list_alt_outlined,
              color: Color(0xFF80DEEA), // Azul claro
              step: '2. Datos del producto:',
              description:
                  'Solicitud de registro a través de un oficio indicando el tipo de biopreparado.',
            ),
            const SizedBox(height: 16),
            // Paso 3
            _instructionStep(
              icon: Icons.check_circle_outline,
              color: Color(0xFF26A69A), // Verde azulado
              step: '3. Requisitos:',
              description: 'Cumplir a cabalidad con el anexo II.',
            ),
            const SizedBox(height: 16),
            // Paso 4
            _instructionStep(
              icon: Icons.mark_email_read_outlined,
              color: Color(0xFF795548), // Marrón
              step: '4. Respuesta:',
              description:
                  'En un plazo de 20 días hábiles desde la radicación de solicitud, verifica si cumple requisitos expide el registro.',
            ),
            const Spacer(), // Empuja el botón hacia la parte inferior
            // Botón centrado horizontalmente
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navegar a regprep2_ICA
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistraBiopreparadosPage2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF859160), // Color verde oliva
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bordes redondeados
                  ),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(
                  Icons.arrow_forward, // Flecha hacia la derecha
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