```react
import 'package:flutter/material.dart';

void main() {
  runApp(const MariaApp());
}

class MariaApp extends StatelessWidget {
  const MariaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MARÍA: Soberanía Real',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: const Color(0xFF0A0E14), // Fondo Táctico
        cardTheme: CardTheme(
          color: const Color(0xFF1C252E),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      home: const CentroDeMando(),
    );
  }
}

class CentroDeMando extends StatefulWidget {
  const CentroDeMando({super.key});

  @override
  State<CentroDeMando> createState() => _CentroDeMandoState();
}

class _CentroDeMandoState extends State<CentroDeMando> {
  // Simulación de estados de desbloqueo
  bool fase2Desbloqueada = false;
  final TextEditingController _codigoController = TextEditingController();

  void _intentarDesbloqueo() {
    // Código de ejemplo para el Arquitecto: "LIBERTAD2026"
    if (_codigoController.text == "LIBERTAD2026") {
      setState(() {
        fase2Desbloqueada = true;
      });
      Navigator.pop(context);
      _mostrarMensaje("Fase 2 Desbloqueada. Bienvenida, Guerrero.");
    } else {
      _mostrarMensaje("Código Inválido. Contacta al Arquitecto Alejandro.");
    }
  }

  void _mostrarMensaje(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CENTRO DE MANDO MARÍA', 
          style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SECCIÓN DE IDENTIDAD (Logotipo Visual)
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Icon(Icons.Account_balance_outlined, size: 80, color: Colors.blueGrey),
                  const SizedBox(height: 10),
                  const Text("MARÍA", 
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 5)),
                  Text("MANUAL DE APRENDIZAJE REAL", 
                    style: TextStyle(fontSize: 12, color: Colors.blueGrey[300], letterSpacing: 1.5)),
                  const Divider(color: Colors.blueGrey, height: 40, thickness: 0.5),
                ],
              ),
            ),

            // LISTA DE FASES
            _buildFaseCard(
              titulo: "FASE 1: RAÍCES",
              subtitulo: "Lógica, Plata y Estoicismo",
              icon: Icons.shield_outlined,
              color: Colors.green,
              bloqueado: false,
              onTap: () => _mostrarDetalleFase("Fase 1: Enfoque en Detección de Falacias y Dinero Real."),
            ),

            _buildFaseCard(
              titulo: "FASE 2: ASISTENCIA",
              subtitulo: "Gestión de Activos e IA",
              icon: Icons.assistant_outlined,
              color: Colors.orange,
              bloqueado: !fase2Desbloqueada,
              onTap: fase2Desbloqueada 
                ? () => _mostrarDetalleFase("Fase 2: Acceso a herramientas de IA y planes de inversión.")
                : _mostrarDialogoDesbloqueo,
            ),

            _buildFaseCard(
              titulo: "FASE 3: PODER",
              subtitulo: "Seguridad y Soberanía Total",
              icon: Icons.bolt,
              color: Colors.red,
              bloqueado: true,
              onTap: () => _mostrarMensaje("Fase en desarrollo por el Arquitecto."),
            ),

            const SizedBox(height: 40),
            
            // SECCIÓN DE FIRMA DEL ARQUITECTO
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text("ARQUITECTO DEL SISTEMA", style: TextStyle(fontSize: 10, color: Colors.grey)),
                  const SizedBox(height: 5),
                  Text("ALEJANDRO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[200])),
                  const SizedBox(height: 10),
                  const Icon(Icons.qr_code_2, color: Colors.white54, size: 40), // Simulación de tu firma QR
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFaseCard({
    required String titulo, 
    required String subtitulo, 
    required IconData icon, 
    required Color color,
    required bool bloqueado,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: bloqueado ? Colors.grey : color, size: 30),
        title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, color: bloqueado ? Colors.grey : Colors.white)),
        subtitle: Text(subtitulo, style: const TextStyle(fontSize: 12)),
        trailing: Icon(
          bloqueado ? Icons.lock_outline : Icons.arrow_forward_ios, 
          size: 16, 
          color: Colors.grey
        ),
      ),
    );
  }

  void _mostrarDetalleFase(String contenido) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1C252E),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        height: 200,
        child: Text(contenido, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  void _mostrarDialogoDesbloqueo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("DESBLOQUEAR FASE 2"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Ingresa la llave de acceso entregada por Alejandro."),
            const SizedBox(height: 20),
            TextField(
              controller: _codigoController,
              decoration: const InputDecoration(
                hintText: "Código de Soberanía",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("CANCELAR")),
          ElevatedButton(onPressed: _intentarDesbloqueo, child: const Text("ACTIVAR")),
        ],
      ),
    );
  }
}

```
```react
import 'package:flutter/material.dart';

void main() {
  runApp(const MariaApp());
}

class MariaApp extends StatelessWidget {
  const MariaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MARÍA: Soberanía Real',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: const Color(0xFF0A0E14), // Fondo Táctico
        cardTheme: CardTheme(
          color: const Color(0xFF1C252E),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      home: const CentroDeMando(),
    );
  }
}

class CentroDeMando extends StatefulWidget {
  const CentroDeMando({super.key});

  @override
  State<CentroDeMando> createState() => _CentroDeMandoState();
}

class _CentroDeMandoState extends State<CentroDeMando> {
  // Simulación de estados de desbloqueo
  bool fase2Desbloqueada = false;
  final TextEditingController _codigoController = TextEditingController();

  void _intentarDesbloqueo() {
    // Código de ejemplo para el Arquitecto: "LIBERTAD2026"
    if (_codigoController.text == "LIBERTAD2026") {
      setState(() {
        fase2Desbloqueada = true;
      });
      Navigator.pop(context);
      _mostrarMensaje("Fase 2 Desbloqueada. Bienvenida, Guerrero.");
    } else {
      _mostrarMensaje("Código Inválido. Contacta al Arquitecto Alejandro.");
    }
  }

  void _mostrarMensaje(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CENTRO DE MANDO MARÍA', 
          style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SECCIÓN DE IDENTIDAD (Logotipo Visual)
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Icon(Icons.Account_balance_outlined, size: 80, color: Colors.blueGrey),
                  const SizedBox(height: 10),
                  const Text("MARÍA", 
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 5)),
                  Text("MANUAL DE APRENDIZAJE REAL", 
                    style: TextStyle(fontSize: 12, color: Colors.blueGrey[300], letterSpacing: 1.5)),
                  const Divider(color: Colors.blueGrey, height: 40, thickness: 0.5),
                ],
              ),
            ),

            // LISTA DE FASES
            _buildFaseCard(
              titulo: "FASE 1: RAÍCES",
              subtitulo: "Lógica, Plata y Estoicismo",
              icon: Icons.shield_outlined,
              color: Colors.green,
              bloqueado: false,
              onTap: () => _mostrarDetalleFase("Fase 1: Enfoque en Detección de Falacias y Dinero Real."),
            ),

            _buildFaseCard(
              titulo: "FASE 2: ASISTENCIA",
              subtitulo: "Gestión de Activos e IA",
              icon: Icons.assistant_outlined,
              color: Colors.orange,
              bloqueado: !fase2Desbloqueada,
              onTap: fase2Desbloqueada 
                ? () => _mostrarDetalleFase("Fase 2: Acceso a herramientas de IA y planes de inversión.")
                : _mostrarDialogoDesbloqueo,
            ),

            _buildFaseCard(
              titulo: "FASE 3: PODER",
              subtitulo: "Seguridad y Soberanía Total",
              icon: Icons.bolt,
              color: Colors.red,
              bloqueado: true,
              onTap: () => _mostrarMensaje("Fase en desarrollo por el Arquitecto."),
            ),

            const SizedBox(height: 40),
            
            // SECCIÓN DE FIRMA DEL ARQUITECTO
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text("ARQUITECTO DEL SISTEMA", style: TextStyle(fontSize: 10, color: Colors.grey)),
                  const SizedBox(height: 5),
                  Text("ALEJANDRO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[200])),
                  const SizedBox(height: 10),
                  const Icon(Icons.qr_code_2, color: Colors.white54, size: 40), // Simulación de tu firma QR
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFaseCard({
    required String titulo, 
    required String subtitulo, 
    required IconData icon, 
    required Color color,
    required bool bloqueado,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: bloqueado ? Colors.grey : color, size: 30),
        title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, color: bloqueado ? Colors.grey : Colors.white)),
        subtitle: Text(subtitulo, style: const TextStyle(fontSize: 12)),
        trailing: Icon(
          bloqueado ? Icons.lock_outline : Icons.arrow_forward_ios, 
          size: 16, 
          color: Colors.grey
        ),
      ),
    );
  }

  void _mostrarDetalleFase(String contenido) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1C252E),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        height: 200,
        child: Text(contenido, style: const TextStyle(fontSize: 16)),
      ),
    );
  }

  void _mostrarDialogoDesbloqueo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("DESBLOQUEAR FASE 2"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Ingresa la llave de acceso entregada por Alejandro."),
            const SizedBox(height: 20),
            TextField(
              controller: _codigoController,
              decoration: const InputDecoration(
                hintText: "Código de Soberanía",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("CANCELAR")),
          ElevatedButton(onPressed: _intentarDesbloqueo, child: const Text("ACTIVAR")),
        ],
      ),
    );
  }
}

```

