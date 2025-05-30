import 'package:flutter/material.dart';
import 'biopreparados2_ICA.dart'; // Importa la pantalla biopreparados2_ICA
import 'biopreparados4_ICA.dart'; // Importa la pantalla biopreparados4_ICA

class BiopreparadosPage3 extends StatelessWidget {
  const BiopreparadosPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Imagen de encabezado
              Align(
                alignment: const Alignment(-1, -1.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
                    width: double.infinity,
                    height: 137.1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Logo en el lugar del título
              Align(
                alignment: const Alignment(0, -0.5),
                child: Icon(
                  Icons.emoji_nature_outlined,
                  size: 120, // Tamaño del logo
                  color: const Color(0xFF142B14), // Color específico para Biopreparados
                ),
              ),
              // Título con el doble de tamaño y bajado
              const Align(
                alignment: Alignment(0, -0.1), // Bajado para evitar sobreposición
                child: Text(
                  'Objeto y definiciones',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 56, // Doble del tamaño original
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Descripción con texto desplazable
              Padding(
                padding: const EdgeInsets.all(24),
                child: const Text(
                  '4.1. Abono: Orgánico a partir de la degradación microbiana de materiales, por descomposición con microorganismos naturales presentes en el medio ambiente.\n\n'
                  '4.2. Abono bocashi: Orgánico obtenido en un proceso de fermentación con microorganismos que proporcionan nutrientes al suelo. La palabra bocashi es del idioma japonés que significa materia orgánica fermentada.\n\n'
                  '4.3. Compost: Producto final del compostaje por descomposición biológica de materiales orgánicos a través de una maduración para convertirse en un recurso orgánico estable y seguro para ser utilizado en la agricultura.\n\n'
                  '4.4. Enmienda o acondicionador orgánico húmico: Producto orgánico sólido de origen pedogenético o geológico con o sin tratamiento químico.\n\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 27, // Reducido en un punto
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              // Botones negros con texto
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la pantalla biopreparados2_ICA
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiopreparadosPage2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Color negro
                      shape: const CircleBorder(), // Forma circular
                      padding: const EdgeInsets.all(20), // Espaciado interno
                    ),
                    child: const Icon(
                      Icons.arrow_back, // Flecha hacia la izquierda
                      color: Colors.white, // Ícono blanco
                      size: 32,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la pantalla biopreparados4_ICA
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiopreparadosPage4(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Color negro
                      shape: const CircleBorder(), // Forma circular
                      padding: const EdgeInsets.all(20), // Espaciado interno
                    ),
                    child: const Icon(
                      Icons.arrow_forward, // Flecha hacia la derecha
                      color: Colors.white, // Ícono blanco
                      size: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24), // Espaciado inferior
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
      ),
    );
  }
}