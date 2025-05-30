import 'package:flutter/material.dart';

class ProductorPage extends StatelessWidget {
  const ProductorPage({super.key});

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
                        Icons.groups_2_outlined, // Logo ajustado para Productor
                        color: Color(0xFFB3A533), // Color ajustado para Productor
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo del logo
                    // Título
                    const Center(
                      child: Text(
                        'Productor',
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
                        'Persona natural o jurídica que realiza técnicamente procesos de fabricación, formulación, envasado o empaque de un producto, a partir de materias primas de origen local.\n\n'
                        'Puede ser un productor de cultivos agrícolas, o criador de ganados como gallinas, patos, vacas, cabras, conejos, entre otros. Pero también puede ser una persona que transforma materias primas agrícolas o pecuarias en productos comerciales, como chocolates, carnes embutidas, quesos, café tostado y molido, etc.\n\n'
                        'También esta palabra aplica para las personas que transforman biomasas residuales, sobrantes de cosechas en abonos orgánicos en una biofábrica.\n',
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