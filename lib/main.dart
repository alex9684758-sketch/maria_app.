import 'package:flutter/material.dart';

void main() => runApp(MariaApp());

class MariaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MARÍA: Soberanía Real',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Color(0xFF121212),
      ),
      home: TableroTactico(),
    );
  }
}

class TableroTactico extends StatelessWidget {
  final List<Map<String, dynamic>> fases = [
    {'titulo': 'FASE 1: RAÍCES', 'status': 'DESBLOQUEADO', 'color': Colors.green},
    {'titulo': 'FASE 2: ASISTENCIA', 'status': 'BLOQUEADO', 'color': Colors.orange},
    {'titulo': 'FASE 3: PODER', 'status': 'BLOQUEADO', 'color': Colors.red},
    {'titulo': 'FASE 4: MAESTRÍA', 'status': 'BLOQUEADO', 'color': Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CENTRO DE MANDO MARÍA')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Bienvenido, Guerrero. Selecciona tu nivel de instrucción.", 
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: fases.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[850],
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: ListTile(
                    leading: Icon(Icons.security, color: fases[index]['color']),
                    title: Text(fases[index]['titulo']),
                    subtitle: Text('Estado: ${fases[index]['status']}'),
                    onTap: () {
                      if (fases[index]['status'] == 'BLOQUEADO') {
                        _mostrarDialogoPago(context);
                      } else {
                        // Aquí abre el Manual de la Fase 1
                      }
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarDialogoPago(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("ACCESO RESTRINGIDO"),
        content: Text("Para acceder a este nivel de soberanía y financiar al Maestro, contacta al administrador del sistema."),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: Text("ENTENDIDO"))],
      ),
    );
  }
}
