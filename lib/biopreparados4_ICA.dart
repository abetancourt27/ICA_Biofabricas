import 'package:flutter/material.dart';
import 'biopreparados3_ICA.dart'; // Importa la pantalla biopreparados3_ICA
import 'biopreparados5_ICA.dart'; // Importa la pantalla biopreparados5_ICA

class BiopreparadosPage4 extends StatelessWidget {
  const BiopreparadosPage4({super.key});

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
                  '4.5. Enmienda o acondicionador orgánico no húmico sólido: Producto orgánico sólido obtenido a partir de residuos de:\n'
                  'a) Plantas industriales.\n'
                  'b) Plantas de tratamiento de aguas residuales agroindustriales y domiciliarias.\n'
                  'c) Residuos sólidos urbanos separados en la fuente.\n\n'
                  '4.6. Humus: Capa superior de los suelos que tiene actividad orgánica, compuesto por productos de la descomposición de la materia orgánica por organismos como las lombrices y microorganismos como hongos y bacterias principalmente.\n\n'
                  '4.7. Lombricompuesto: Material producido a partir de la digestión natural de las lombrices, que utiliza la acción conjunta de microorganismos para procesar material orgánico en nutrientes, este es un mejorador de suelos.\n\n',
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
                      Icons.arrow_back, // Flecha hacia la izquierda
                      color: Colors.white, // Ícono blanco
                      size: 32,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la pantalla biopreparados5_ICA
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiopreparadosPage5(),
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
              // Botones de navegación
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}