import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

   // final colors=Theme.of(context).colorScheme;
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          spacing: 10,
           crossAxisAlignment: WrapCrossAlignment.center,
           alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            const ElevatedButton(onPressed: null, child: Text("Disabled Button")),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text("Elevated Button"),
              icon: const Icon(Icons.access_alarms_rounded),
            ),
            FilledButton(onPressed: (){}, child: const Text("filled Button")),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.account_tree_outlined), label: const Text("Filled Button")),
            OutlinedButton(onPressed: (){}, child: const Text("Outlined Button")),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.adb_sharp), label: const Text("Outlined Button")),
            TextButton(onPressed: (){}, child: const Text("Text Button")),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.add_home_work_outlined), label: const Text("Text Button")),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded), style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.purple))),
            const CustomButton(),

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){} ,
          child:const Padding(
            padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,child: Text("Hola Mundo", style: TextStyle(color: Colors.white)),),
        ),
      ),
    );
  }
}