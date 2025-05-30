import 'package:flutter/material.dart';
import 'biopreparados2_ICA.dart'; // Importa la pantalla biopreparados2_ICA

class BiopreparadosPage extends StatelessWidget {
  const BiopreparadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
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
                  // Título con el doble de tamaño
                  const Align(
                    alignment: Alignment(0, -0.1),
                    child: Text(
                      'Biopreparados',
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
                      'Insumo agrícola elaborado a partir de la combinación o mezcla de sustancias de origen vegetal, microbiano, animal o mineral presentes en la naturaleza, que tiene propiedades nutritivas para las plantas y/o controladoras de plagas y enfermedades, o que es utilizado como enmienda o sustrato. El biopreparado debe haberse obtenido mediante un procedimiento de tipo y escala artesanal, a partir de recursos de obtención local. Existen los siguientes tipos de biopreparados, clasificados según su forma de actuar:\n\n',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  // Botón negro con texto
                  Column(
                    children: [
                      const Text(
                        'Objetos y definiciones',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
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
                          backgroundColor: Colors.black,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      const SizedBox(height: 24), // Primer espacio adicional
                      const SizedBox(height: 24), // Segundo espacio adicional
                    ],
                  ),
                ],
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