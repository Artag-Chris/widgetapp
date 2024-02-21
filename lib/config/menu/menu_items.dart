
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

 MenuItem(title: "Animated Container",
 subtitle: "Statefull Widget animated", 
 link: "/animated", 
 icon: Icons.check_box_outline_blank_rounded),

  MenuItem(title: "UI Controls + Expansion Panels",
 subtitle: "Controles de Interfaz de flutter" , 
 link: "/ui-controls", 
 icon: Icons.car_rental_outlined),

 MenuItem(title: "Tutorials",
 subtitle: "Tutoriales de Flutter" , 
 link: "/tutorial", 
 icon: Icons.accessible_forward_sharp),
];  