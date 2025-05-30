import 'package:flutter/material.dart';

class AutoconsumoPage extends StatelessWidget {
  const AutoconsumoPage({super.key});

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
                        'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
                        width: double.infinity,
                        height: 137.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo de la imagen
                    // Logo en el lugar del título
                    const Center(
                      child: Icon(
                        Icons.recycling_outlined, // Logo ajustado
                        color: Color(0xFF78503C),
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo del logo
                    // Título
                    const Center(
                      child: Text(
                        'Autoconsumo',
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
                        'Acción de consumir alimentos agrícolas producidos de manera local (unidad agropecuaria) para satisfacer sus necesidades alimenticias.\n\n'
                        'También se puede considerar autoconsumo la producción de los biopreparados de la biofábrica para el consumo en su propio sistema productivo.\n',
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