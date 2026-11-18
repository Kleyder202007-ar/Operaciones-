import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({ Key? key }) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A), // Fondo azul oscuro muy elegante
      appBar: AppBar(
        title: const Text('Operaciones Matemáticas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E293B),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Calculadora", 
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.tealAccent),
                ),
                const SizedBox(height: 35), 
                
                // Primer número con bordes modernos y sus respectivos íconos
                TextField(
                  controller: num1,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Ingrese primer número",
                    labelStyle: const TextStyle(color: Colors.white70),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    fillColor: const Color(0xFF1E293B),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    // Borde normal redondeado
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16), 
                      borderSide: BorderSide(color: Colors.tealAccent.withOpacity(0.3), width: 1),
                    ),
                    // Borde cuando está seleccionado (enfocado)
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.tealAccent, width: 2),
                    ),
                    // Borde cuando no está seleccionado
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
                    ),
                    prefixIcon: const Icon(Icons.looks_one_rounded, color: Colors.tealAccent),
                  ),
                ),
                const SizedBox(height: 20),
                
                // Segundo número con bordes modernos y sus respectivos íconos
                TextField(
                  controller: num2,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Ingrese segundo número",
                    labelStyle: const TextStyle(color: Colors.white70),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    fillColor: const Color(0xFF1E293B),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    // Borde normal redondeado
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16), 
                      borderSide: BorderSide(color: Colors.tealAccent.withOpacity(0.3), width: 1),
                    ),
                    // Borde cuando está seleccionado (enfocado)
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.tealAccent, width: 2),
                    ),
                    // Borde cuando no está seleccionado
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
                    ),
                    prefixIcon: const Icon(Icons.looks_two_rounded, color: Colors.tealAccent),
                  ),
                ),
                const SizedBox(height: 35),
                
                // Fila de botones centrados, con bordes redondeados y sus íconos correspondientes
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: sumar, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Botones más redondeados
                        ),
                      ),
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text("Sumar"),
                    ),
                    const SizedBox(width: 6),
                    ElevatedButton.icon(
                      onPressed: restar, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.remove, size: 18),
                      label: const Text("Restar"),
                    ),
                    const SizedBox(width: 6),
                    ElevatedButton.icon(
                      onPressed: multiplicar, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.close, size: 18),
                      label: const Text("Multiplicar"),
                    ),
                    const SizedBox(width: 6),
                    ElevatedButton.icon(
                      onPressed: dividir, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.power_input, size: 18), // Icono representativo o puedes usar un símbolo
                      label: const Text("Dividir"),
                    ),
                  ],
                ),
                
                const SizedBox(height: 40),
                
                // Contenedor elegante con bordes finos para el resultado
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E293B),
                    borderRadius: BorderRadius.circular(16), // Bordes redondeados del contenedor
                    border: Border.all(color: Colors.tealAccent.withOpacity(0.4), width: 1.5),
                  ),
                  child: Text(
                    "Resultado: $resultado",
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.tealAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sumar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 + n2;
    });
  }

  void restar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 - n2;
    });
  }

  void multiplicar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 * n2;
    });
  }

  void dividir() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      if (n2 == 0) {
        resultado = 0;
      } else {
        resultado = n1 / n2;
      }
    });
  }
}