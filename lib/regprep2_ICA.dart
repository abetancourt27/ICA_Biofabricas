import 'package:flutter/material.dart';

class RegistraBiopreparadosPage2 extends StatelessWidget {
  const RegistraBiopreparadosPage2({super.key});

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
            // Subtítulo
            const Text(
              'Suspensión:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Caso 1
            _suspensionCase(
              icon: Icons.description_outlined,
              color: Color(0xFF002855), // Azul oscuro
              description:
                  'Cuando se presente una situación que ponga en riesgo la sanidad agropecuaria.',
            ),
            const SizedBox(height: 16),
            // Caso 2
            _suspensionCase(
              icon: Icons.list_alt_outlined,
              color: Color(0xFFB56576), // Rojo suave
              description:
                  'Por no permitir las visitas de seguimiento luego de la aprobación del registro.',
            ),
            const SizedBox(height: 16),
            // Caso 3
            _suspensionCase(
              icon: Icons.warning_amber_outlined,
              color: Color(0xFFFF0000), // Rojo
              description:
                  'La suspensión también puede aplicar al productor y comercializador de biopreparados de biofábricas familiares y comunitarias.',
            ),
            const SizedBox(height: 24),
            // Nota de trabajo
            const Text(
              'Nota de trabajo:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Este capítulo tiene un párrafo, en donde indica que los biopreparados elaborados para autoconsumo, no son objeto de registro de comercialización. Pero se recomienda tener registros y datos del producto como se indica en el paso del procedimiento de solicitud. El tener un registro de procesos detallados y un control de materias primas es fundamental. Una suspensión no subsanada será causa de una cancelación del registro en cualquiera de los casos.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  // Widget para cada caso de suspensión
  Widget _suspensionCase({
    required IconData icon,
    required Color color,
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
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}