import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackbarScreen extends StatelessWidget {
  static const name = 'skackbar_screen';
  const SnackbarScreen({super.key});
//Función para mostrar un SnackBar personalizado
  void showCustomSnackbar(BuildContext context) {
    //para evitar que se sobreexpongan , ppara evitar acumulacion
    ScaffoldMessenger.of(context).clearSnackBars();
    // Crea un nuevo SnackBar con un mensaje y una acción
    final snackBack = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2), // Duración del SnackBar en pantalla
    );

    // Muestra el SnackBar en la pantalla
    ScaffoldMessenger.of(context).showSnackBar(snackBack);
  }

 // Función para mostrar un cuadro de diálogo de confirmación
void openDialog (BuildContext context ){
  showDialog(
    context: context, 
    barrierDismissible: false,  // Evita cerrar el diálogo tocando fuera de él
    builder: (context)=>AlertDialog(

      title: const Text('¿Estas seguro?'),
      content: const Text('Tempor ex cillum nisi anim quis occaecat id magna minim deserunt aliqua incididunt consequat est. Laborum veniam magna labore laboris aliquip aliqua officia commodo dolore excepteur. Veniam veniam id velit elit ex quis et enim mollit nisi. Ullamco occaecat consectetur id commodo aute mollit sunt sunt ex nulla ipsum cupidatat ullamco.Fugiat eiusmod nulla exercitation eiusmod enim laboris non aliquip et aliquip fugiat consectetur ipsum nisi. Eu ut exercitation est esse ipsum ex ex proident aliquip qui. Pariatur sint enim commodo ullamco ea magna reprehenderit amet est nisi. Elit aute qui aliquip labore laboris aliqua cupidatat. Enim ut voluptate commodo do nisi cupidatat exercitation.'),
      actions: [
        //paa cerrar se puede usar context.pop o navigator 
        TextButton(onPressed: ()=> context.pop(), child: Text('Cancelar')),
        FilledButton (onPressed: () => context.pop(), child: Text('Aceptar')), 
      ],
    )); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () => openDialog(context), 
                child: Text('Licecncias Usadas ')),
                const SizedBox(height: 20,), 
            FilledButton.tonal(
              onPressed: () {}, 
              child: Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(
              context) // Llama a la función para mostrar el SnackBar
          ),
    );
  }
}
