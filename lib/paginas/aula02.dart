import 'package:flutter/material.dart';

class Aula02 extends StatelessWidget {
  const Aula02({super.key});

  @override
  Widget build(BuildContext context) {
    //Construindo widget customizavel (Reaproveitamento de código)
    Widget _construirColuna(
      MainAxisAlignment alinhamento,
      IconData icone1,
      IconData icone2,
      IconData icone3,
    ) {
      // Definido uma coluna
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
        ),
        height: 200,
        // Criando uma coluna que alinha seu conteúdo no início
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alinhamento,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone1),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone2),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone3),
            ),
          ],
        ),
      );
    }

    ;

    Widget _construirLinha(
      MainAxisAlignment alinhamento, // Alinhamento por parâmetro
      IconData icone1, // Icones por parâmetro
      IconData icone2,
      IconData icone3,
    ) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        // Criando uma linha que alinha seu conteúdo no início
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alinhamento,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone1),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone2),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: Icon(icone3),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 02 - Rows e Columns"),
      ),
      // Cria uma barra de rolagem para o conteúdo da tela
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
              child: Text("Start (Padrão)"),
            ),
            _construirLinha(
              MainAxisAlignment.start,
              Icons.seven_k_rounded,
              Icons.eight_k_rounded,
              Icons.nine_k_rounded,
            ),
            _construirColuna(
              MainAxisAlignment.start,
              Icons.abc,
              Icons.abc_rounded,
              Icons.ac_unit,
            ),
            const SizedBox(
              height: 20,
              child: Text("Start"),
            ),
             _construirLinha(
              MainAxisAlignment.start,
              Icons.abc_outlined,
              Icons.abc_sharp,
              Icons.ac_unit_outlined,
            ),
            _construirColuna(
              MainAxisAlignment.start,
              Icons.access_alarm_outlined,
              Icons.accessibility_new_sharp,
              Icons.access_alarm_sharp,
            ),
             const SizedBox(
              height: 20,
              child: Text("Center"),
            ),
             _construirLinha(
              MainAxisAlignment.center,
              Icons.accessibility_new_rounded,
              Icons.accessible_forward_sharp,
              Icons.add_home_outlined,
            ),
            _construirColuna(
              MainAxisAlignment.center,
              Icons.add_circle_outline_outlined,
              Icons.add_photo_alternate_outlined,
              Icons.attractions_rounded,
            ),
             const SizedBox(
              height: 20,
              child: Text("End"),
            ),
             _construirLinha(
              MainAxisAlignment.end,
              Icons.airline_stops_outlined,
              Icons.api_sharp,
              Icons.alarm_off_rounded,
            ),
             _construirColuna(
              MainAxisAlignment.end,
              Icons.alt_route_sharp,
              Icons.album_rounded,
              Icons.autorenew_sharp,
            ),
            const SizedBox(
              height: 20,
              child: Text("Space Between"),
            ),
             _construirLinha(
              MainAxisAlignment.spaceBetween,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
             _construirColuna(
              MainAxisAlignment.spaceBetween,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
            const SizedBox(
              height: 20,
              child: Text("Space Around"),
            ),
             _construirLinha(
              MainAxisAlignment.spaceAround,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
             _construirColuna(
              MainAxisAlignment.spaceAround,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
            const SizedBox(
              height: 20,
              child: Text("Space Evenly"),
            ),
             _construirLinha(
              MainAxisAlignment.spaceEvenly,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
             _construirColuna(
              MainAxisAlignment.spaceEvenly,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
              Icons.seven_k_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
