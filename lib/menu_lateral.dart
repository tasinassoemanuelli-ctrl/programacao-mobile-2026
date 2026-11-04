import 'package:flutter/material.dart';

class Menulateral extends StatefulWidget {
  const Menulateral({super.key});

  @override
  State<Menulateral> createState() => _MenulateralState();
}

class _MenulateralState extends State<Menulateral> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 234, 139)
            ),
            child: Text('Curso Flutter'),
          ),
          ListTile(
            leading: const Icon(Icons.crop_square),
            title: const Text("01 - Container"),
            onTap: () => Navigator.pushNamed(context, "/aula01"),
          ),
          ListTile(
            leading: const Icon(Icons.table_rows),
            title: const Text("02 - Linhas e Colunas"),
            onTap: () => Navigator.pushNamed(context, "/aula02")
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("03 - Perfil do usuário"),
            onTap: () => Navigator.pushNamed(context, "/aula03")
          )
        ],
      ),
    );
  }
}
