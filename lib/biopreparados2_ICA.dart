import 'package:flutter/material.dart';
import 'biopreparados1_ICA.dart'; // Importa la pantalla biopreparados1_ICA
import 'biopreparados3_ICA.dart'; // Importa la pantalla biopreparados3_ICA

class BiopreparadosPage2 extends StatelessWidget {
  const BiopreparadosPage2({super.key});

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
                  '1 - Protectores: Se aplican recubriendo la parte externa de la planta y actúan como una barrera contra las plagas que potencialmente puede producir la enfermedad.\n\n'
                  '2 - Sistémicos: Actúan creando o dotando de defensas a las plantas por dentro. Son absorbidos a través del follaje o de las raíces y se movilizan a toda la planta.\n\n'
                  '3 - Bioinsecticida / biorepelente: Se preparan a base de sustancias naturales con propiedades reguladoras, de control o de eliminación de insectos considerados plagas para los cultivos. Se extraen de alguna planta, de los propios insectos o pueden ser de origen mineral. Los más comunes son aquellos producidos a partir de infusiones, macerados, purines y decocciones.\n\n'
                  '4 - Nutritivos: Se agregan al suelo con el objetivo de aumentar la disponibilidad y absorción de minerales de parte de las plantas y mejorar el desarrollo de los cultivos. Estos a su vez pueden ser:\n\n',
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
                      // Navega a la pantalla biopreparados1_ICA
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiopreparadosPage(),
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
                      // Navega a la pantalla biopreparados3_ICA
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiopreparadosPage3(),
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