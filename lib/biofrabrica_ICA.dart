import 'package:flutter/material.dart';

class BiofabricaPage extends StatelessWidget {
  const BiofabricaPage({super.key});

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
                        Icons.factory_outlined, // Logo ajustado
                        color: Color(0xFF548C2F), // Color ajustado para Biofábrica
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo del logo
                    // Título
                    const Center(
                      child: Text(
                        'Biofábrica',
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
                        'Una biofábrica es una instalación diseñada para la producción de biopreparados, que son insumos agrícolas elaborados a partir de microorganismos, extractos vegetales u otros materiales naturales.\n\n'
                        'Estas instalaciones permiten a los productores obtener alternativas sostenibles y económicas para el manejo de plagas, enfermedades y fertilización en sus cultivos.\n\n'
                        'Además, las biofábricas promueven la agricultura sostenible al reducir la dependencia de productos químicos sintéticos, mejorando la salud del suelo y la biodiversidad en los ecosistemas agrícolas.\n',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  const SizedBox(width: 40), // Espacio entre los dos botones
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