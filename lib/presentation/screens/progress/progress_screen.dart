

import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name= 'progress_screen'; 
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blue,
        title: const Text('Progress Indicator', style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: _ProgressView(),

    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:const  [
          SizedBox(height: 30,),
          Text('Circular Progress indicator '),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor:Colors.white,),


          SizedBox(height: 20,),
          Text('Circular y Linear Controlado  '),
          SizedBox(height: 10,),
          _ControlledProgressIndicator(), 

        ],
      ),
    );
  }
}


class  _ControlledProgressIndicator  extends StatelessWidget {
  const _ControlledProgressIndicator ();

  @override
  Widget build(BuildContext context) {
    //uns stream builder es algo que se construira en ejecucion 
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value*2) /100; // Convierte el valor a un rango de 0.0 a 1.0
      }).takeWhile((value)=> value<1.0), // Detiene la emisión cuando el valor alcanza 100

      builder: (context, snapshot) {
        //snapshot es el valor que tiene el stream
        final progressValue = snapshot.data ?? 0; // Si no hay datos, usa 0 como valor predeterminado
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      
        child: Row(//matriz horizontal 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator( value: progressValue, strokeWidth: 2,backgroundColor: Colors.black26,),
          const SizedBox(width: 20,),
          Expanded(child: LinearProgressIndicator(value: progressValue,))
        ],
        ),
        ); 
        
      },
    );
  }
}