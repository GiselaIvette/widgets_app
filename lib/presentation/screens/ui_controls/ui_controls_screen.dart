import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI controls Screen'),
        centerTitle: true,
      //  backgroundColor: Colors.purpleAccent,
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

//que valores se permitiran en el radius
enum Trasportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Trasportation selectedTransportation =
      Trasportation.car; //se pone una opcion por defecto
  //NOTA: si se requiere capturar un valor solo se debe de  tomar el selectedTransportation
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      //para evitaer rebote
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            //lo opuesto a isDeveloper
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Viajar por carro'),
                value: Trasportation
                    .car, //nos ayudara a enlazar un valor seleccionado con el valor actual
                groupValue:
                    selectedTransportation, //para marcar opcion seleccionada
                onChanged: (value) => setState(() {
                      selectedTransportation = Trasportation.car;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar por avion'),
                value: Trasportation
                    .plane, //nos ayudara a enlazar un valor seleccionado con el valor actual
                groupValue:
                    selectedTransportation, //para marcar opcion seleccionada
                onChanged: (value) => setState(() {
                      selectedTransportation = Trasportation.plane;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Viajar por bote'),
                value: Trasportation
                    .boat, //nos ayudara a enlazar un valor seleccionado con el valor actual
                groupValue:
                    selectedTransportation, //para marcar opcion seleccionada
                onChanged: (value) => setState(() {
                      selectedTransportation = Trasportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Viajar por Submarino'),
                value: Trasportation
                    .submarine, //nos ayudara a enlazar un valor seleccionado con el valor actual
                groupValue:
                    selectedTransportation, //para marcar opcion seleccionada
                onChanged: (value) => setState(() {
                      selectedTransportation = Trasportation.submarine;
                    })),
          ],
        ),
        CheckboxListTile(
            //recibe valoress booleanos
            title: Text('Do you want breakfast?'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            //recibe valoress booleanos
            title: Text('Do you want lunch?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            //recibe valoress booleanos
            title: Text('Do you want dinner?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
