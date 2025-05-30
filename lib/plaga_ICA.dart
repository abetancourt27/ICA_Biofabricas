import 'package:flutter/material.dart';

class PlagaPage extends StatelessWidget {
  const PlagaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          children: [
            // Contenido desplazable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Imagen de encabezado
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1421789665209-c9b2a435e3dc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
                        width: double.infinity,
                        height: 137.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo de la imagen
                    // Logo en el lugar del título
                    const Center(
                      child: Icon(
                        Icons.pest_control_outlined, // Logo ajustado para Plaga
                        color: const Color(0xFFE26C29), // Color ajustado para Plaga
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo del logo
                    // Título
                    const Center(
                      child: Text(
                        'Plaga',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 56, // Tamaño del título
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24), // Espaciado debajo del título
                    // Descripción
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Agente patógeno dañino para las plantas o productos vegetales, de cualquier especie, raza o biotipo vegetal o animal.\n\n'
                        'En este concepto también se consideran las arvenses espontáneas que se presentan en los cultivos y que pueden representar una competencia nutricional con la siembra principal, pero que se deben manejar de acuerdo con el criterio agroecológico del plan de manejo integrado del cultivo.\n\n'
                        'Es necesario tener en cuenta que, en la agricultura orgánica, se emplean conceptos como el Manejo Integrado de Plagas (MIP), el manejo agroecológico de malezas o la gestión de organismos no deseados, los cuales reflejan un enfoque sostenible y respetuoso con el medio ambiente. Estas prácticas buscan mantener el equilibrio ecológico mediante estrategias preventivas, biológicas, culturales y mecánicas, promoviendo la biodiversidad funcional y minimizando la necesidad de insumos sintéticos. En lugar de erradicar plagas o malezas, se prioriza su regulación natural y su integración en un sistema productivo equilibrado.\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 29, // Tamaño del texto ajustado
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24), // Espaciado debajo de la descripción
                  ],
                ),
              ),
            ),
            // Botones inferiores
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Configuración presionada');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE15919), // Color naranja
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Perfil presionado');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE15919), // Color naranja
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Icon(
                      Icons.person_2_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE15919), // Color naranja
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/panelPrincipal');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE15919), // Color naranja
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}