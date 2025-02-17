import 'package:flutter/material.dart';

/// Lista de tarjetas con valores de elevación y etiquetas.
/// Cada tarjeta está representada como un mapa con dos claves:
/// - elevation: Un double que indica la elevación del card.
/// - label: Un String que representa el texto de la tarjeta.
const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0 '},
  {'elevation': 1.0, 'label': 'Elevation 1 '},
  {'elevation': 2.0, 'label': 'Elevation 2 '},
  {'elevation': 3.0, 'label': 'Elevation 3 '},
  {'elevation': 4.0, 'label': 'Elevation 4 '},
  {'elevation': 5.0, 'label': 'Elevation 5 '},
];

/// Pantalla principal que muestra una lista de tarjetas con diferentes niveles de elevación.
/// Esta pantalla contiene un Scaffold con un AppBar y una lista de tarjetas en el body.
class CardsScreen extends StatelessWidget {
  /// Nombre de la ruta de la pantalla.
  static const String name = 'cards_screen';

  /// Constructor de la pantalla.
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screens')),
      body:
          const _CardsView(), // Se coloca el widget que muestra la lista de tarjetas.
    );
  }
}

/// Widget que muestra la lista de tarjetas dentro de un `SingleChildScrollView`
/// para permitir el desplazamiento vertical si hay muchas tarjetas.
class _CardsView extends StatelessWidget {
  /// Constructor del widget.
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Se utiliza `map` para transformar la lista de `cards` en una lista de widgets `_CardsType1`.
          ...cards.map((card) => _CardsType1(
                card['label']
                    as String, // Se asegura que el valor sea de tipo `String`.
                card['elevation']
                    as double, // Se convierte el valor a `double`.
              )),

          ...cards.map((card) => _CardsType2(
                card['label']
                    as String, // Se asegura que el valor sea de tipo `String`.
                card['elevation']
                    as double, // Se convierte el valor a `double`.
              )),

          ...cards.map((card) => _CardsType3(
                card['label']
                    as String, // Se asegura que el valor sea de tipo `String`.
                card['elevation']
                    as double, // Se convierte el valor a `double`.
              )),

          ...cards.map((card) => _CardsType4(
                card['label']
                    as String, // Se asegura que el valor sea de tipo `String`.
                card['elevation']
                    as double, // Se convierte el valor a `double`.
              )),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

/// Widget que representa una tarjeta individual con una elevación y un texto descriptivo.
class _CardsType1 extends StatelessWidget {
  /// Texto que aparecerá en la tarjeta.
  final String label;

  /// Nivel de elevación de la tarjeta.
  final double elevation;

  //Constructor
  const _CardsType1(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation, // Aplica la elevación proporcionada a la tarjeta.
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            // Ícono de opciones en la esquina superior derecha.
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, // Botón sin funcionalidad aún.
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            // Texto de la tarjeta, alineado en la parte inferior.
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

//ptro tipo de cards
class _CardsType2 extends StatelessWidget {
  /// Texto que aparecerá en la tarjeta.
  final String label;

  /// Nivel de elevación de la tarjeta.
  final double elevation;

  const _CardsType2(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: colors.outline)),
      elevation: elevation, // Aplica la elevación proporcionada a la tarjeta.
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            // Ícono de opciones en la esquina superior derecha.
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, // Botón sin funcionalidad aún.
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            // Texto de la tarjeta, alineado en la parte inferior.
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('$label +-outline '),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardsType3 extends StatelessWidget {
  /// Texto que aparecerá en la tarjeta.
  final String label;

  /// Nivel de elevación de la tarjeta.
  final double elevation;

  //Constructor
  const _CardsType3(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      // color: colors,surfaceVariant
      color: colors.surfaceContainerHighest,
      elevation: elevation, // Aplica la elevación proporcionada a la tarjeta.
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            // Ícono de opciones en la esquina superior derecha.
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {}, // Botón sin funcionalidad aún.
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
            // Texto de la tarjeta, alineado en la parte inferior.
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('$label -filled'),
            ),
          ],
        ),
      ),
    );
  }
}
//tarjeta con relleno de imagemn

class _CardsType4 extends StatelessWidget {
  /// Texto que aparecerá en la tarjeta.
  final String label;

  /// Nivel de elevación de la tarjeta.
  final double elevation;

  //Constructor
  const _CardsType4(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation, // Aplica la elevación proporcionada a la tarjeta.
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit:  BoxFit.cover ,
          ),
          // Ícono de opciones en la esquina superior derecha.
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                onPressed: () {}, // Botón sin funcionalidad aún.
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
          ),
          // Texto de la tarjeta, alineado en la parte inferior.
        ],
      ),
    );
  }
}
