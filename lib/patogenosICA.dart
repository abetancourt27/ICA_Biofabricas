import 'package:flutter/material.dart';

class PatogenosaPage extends StatelessWidget {
  const PatogenosaPage({super.key});

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
                        Icons.blur_on, // Logo extraído
                        color: Color(0xFF5C0C0C),
                        size: 90,
                      ),
                    ),
                    const SizedBox(height: 16), // Espaciado debajo del logo
                    // Título
                    const Center(
                      child: Text(
                        'Patógenos',
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
                        'Microorganismos que pueden provocar enfermedades a las plantas, animales y humanos, como los virus, bacterias y hongos, entre otros.\n\n'
                        'Estos patógenos no solo se tienen referencia a los que se pueden presentar en las actividades normales de los cultivos, también a los que se pueden generar en los procesos de la biofábrica, por el origen de la materia prima o por un mal manejo de los procesos de composta, maduración, fermentación entre otras actividades.\n\n'
                        'Un ejemplo, es el control de la temperatura en compostas, que busca garantizar la eliminación de patógenos nocivos y la obtención de un producto final seguro y de alta calidad. Durante el proceso de compostaje, temperaturas sostenidas entre 55 °C y 65 °C son ideales para destruir microorganismos perjudiciales, huevos de parásitos y semillas de malezas sin comprometer la actividad de los microorganismos benéficos. Este rango térmico asegura una descomposición eficiente, la estabilización de la materia orgánica, reduciendo riesgos sanitarios asociados al uso del compost en cultivos. Además, monitorear y mantener temperaturas adecuadas previene la generación de condiciones anaeróbicas que ralentizan el proceso y genera malos olores.\n',
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