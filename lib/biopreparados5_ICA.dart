import 'package:flutter/material.dart';
import 'biopreparados4_ICA.dart'; // Importa la pantalla biopreparados4_ICA

class BiopreparadosPage5 extends StatelessWidget {
  const BiopreparadosPage5({super.key});

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
                  '4.8. Productos microbianos: Compuesto de microorganismos (bacterias u hongos), que han sido sometidos a un proceso de crecimiento masivo y producen un efecto de mejora de las condiciones del cultivo o de control de plagas.\n\n'
                  '4.9. Té de compost: Extracto acuoso de composta y/o lombricomposta que permite que los microorganismos benéficos crezcan en gran medida.\n\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 27, // Reducido en un punto
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              // Botón negro centrado
              Center(
                child: ElevatedButton(
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
                    Icons.arrow_back, // Flecha hacia la izquierda
                    color: Colors.white, // Ícono blanco
                    size: 32,
                  ),
                ),
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