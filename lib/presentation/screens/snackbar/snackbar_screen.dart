import 'package:flutter/material.dart';



class    SnackbarScreen  extends StatelessWidget {

  static const name = 'snackbar_screen';
  const SnackbarScreen   ({super.key});

void showCustomSnackbar(BuildContext context){
ScaffoldMessenger.of(context).clearSnackBars();

 ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: const Text('Snackbar'))
        );
}

void openDialog(BuildContext context){

  showDialog(context: context,
  barrierDismissible: false, builder: (context)=> AlertDialog(title: const Text('¡estas seguro?'), content: const Text("muchooooooooooo Texto"),
  actions: [
    TextButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text('Cancelar')),
    FilledButton(onPressed: (){
      
    }, child: const Text('Aceptar')),
  ],));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
body:Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FilledButton.tonal(onPressed: (){
        showAboutDialog(context: context,children: [
          const Text("texto texto y mas texto"),
        ]);
      }, child: const Text('Licencias Usadas')),
      FilledButton.tonal(onPressed: ()=>openDialog(context), child: const Text('Mostrar Dialogo en pantalla')),
    ],
  ),
) ,


      floatingActionButton: FloatingActionButton.extended(onPressed: (
       
      ){ 
        showCustomSnackbar(context);}, label: const Text('Show snackbar'), icon:const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}