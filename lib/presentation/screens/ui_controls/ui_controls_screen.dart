import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
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

enum TransitionOptions { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloperMode = true;
  TransitionOptions selectedTransportation = TransitionOptions.car;
bool wantsBreakfast=false;
bool wantsLunch=false;
bool wantsDinner=false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles Adicionales'),
            value: isDeveloperMode,
            onChanged: (value) => setState(() {
                  isDeveloperMode = !isDeveloperMode;
                })),
        ExpansionTile(

          title: const Text("vehicles"),
          subtitle: Text("your vehicle $selectedTransportation"),
          children: [
            RadioListTile(
                title: const Text("By car"),
                subtitle: const Text("travel in a car"),
                value: TransitionOptions.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = TransitionOptions.car;
                    })),
            RadioListTile(
                title: const Text("By boat"),
                subtitle: const Text("travel in a boat"),
                value: TransitionOptions.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = TransitionOptions.boat;
                    })),
            RadioListTile(
                title: const Text("By plane"),
                subtitle: const Text("travel in a plane"),
                value: TransitionOptions.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = TransitionOptions.plane;
                    })),
            RadioListTile(
                title: const Text("By submarine"),
                subtitle: const Text("travel in a submarine"),
                value: TransitionOptions.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = TransitionOptions.submarine;
                    })),
          ],
        ),

        CheckboxListTile(
          title: const Text("wants Breakfast?"),
          value: wantsBreakfast,
           onChanged: (value) => setState(() {
             wantsBreakfast = !wantsBreakfast;
           })),
             CheckboxListTile(
          title: const Text("wants Lunch?"),
          value: wantsLunch,
           onChanged: (value) => setState(() {
             wantsLunch = !wantsLunch;
           })),
             CheckboxListTile(
          title: const Text("wants Dinner?"),
          value: wantsDinner,
           onChanged: (value) => setState(() {
             wantsDinner = !wantsDinner;
           })),
      ],
    );
  }
}
