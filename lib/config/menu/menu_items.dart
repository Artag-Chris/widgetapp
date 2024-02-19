
import 'package:flutter/material.dart' ;

class MenuItem{
final String title;
final String subtitle;
final String link;
final IconData icon;

 const MenuItem(
    {required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon});

}

 const  appMenuItems = <MenuItem>[

MenuItem(title: "Buttons",
 subtitle: "Visualizar botones en Flutter", 
 link: "/Buttons", 
 icon: Icons.smart_button_rounded),

 MenuItem(title: "Cards",
 subtitle: "Un Contenedor estilizado", 
 link: "/Cards", 
 icon: Icons.credit_card),

 MenuItem(title: "ProgressIndicators",
 subtitle: "Generales y Controlados", 
 link: "/progress", 
 icon: Icons.refresh_rounded),

 MenuItem(title: "SnackBars y Dialogs",
 subtitle: "Indicadores en Pantallas", 
 link: "/snacksbars", 
 icon: Icons.info_outline_rounded),
];  