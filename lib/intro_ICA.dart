import 'package:flutter/material.dart';
import 'panelprincipal_ICA.dart'; // Asegúrate de que este archivo existe

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool keepLoggedIn = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, -1.01),
              child: Image.network(
                'https://images.unsplash.com/photo-1722264615687-d8d0090f1587?auto=format&fit=crop&w=1080&q=80',
                width: double.infinity,
                height: 360,
                fit: BoxFit.cover,
              ),
            ),
            const Align(
              alignment: Alignment(0.0, -0.1),
              child: Text(
                'Biofábricas ICA',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Letras en blanco
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.1),
              child: SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _usernameController,
                  style: const TextStyle(color: Colors.white), // Texto ingresado en blanco
                  decoration: InputDecoration(
                    hintText: 'Usuario',
                    hintStyle: const TextStyle(color: Colors.white70), // Placeholder en blanco
                    filled: true,
                    fillColor: Colors.grey[800], // Fondo oscuro para contraste
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.25),
              child: SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white), // Texto ingresado en blanco
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle: const TextStyle(color: Colors.white70), // Placeholder en blanco
                    filled: true,
                    fillColor: Colors.grey[800], // Fondo oscuro para contraste
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.4),
              child: ElevatedButton(
                onPressed: () {
                  // Validar campos antes de navegar
                  if (_usernameController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Por favor, ingresa usuario y contraseña'),
                      ),
                    );
                  } else {
                    // Navegar a PanelPrincipal
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PanelPrincipal(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF058D0E),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(color: Colors.white), // Letras en blanco
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.55),
              child: ElevatedButton(
                onPressed: () {
                  // Acción para nuevo usuario
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Funcionalidad en desarrollo'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF058D0E),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Nuevo usuario',
                  style: TextStyle(color: Colors.white), // Letras en blanco
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: ElevatedButton(
                onPressed: () {
                  // Acción para recuperar contraseña
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Funcionalidad en desarrollo'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF058D0E),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(color: Colors.white), // Letras en blanco
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.85),
              child: SwitchListTile(
                value: keepLoggedIn,
                onChanged: (value) {
                  setState(() {
                    keepLoggedIn = value;
                  });
                },
                title: const Text(
                  'Mantener la sesión iniciada',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white), // Letras en blanco
                ),
                activeColor: const Color(0xFF058D0E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
