import 'package:app06/pertemuan06/pertemuan06_provider.dart';
import 'package:app06/pertemuan06/pertemuan06_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pertemuan06Screen extends StatefulWidget {
  const Pertemuan06Screen({super.key});

  @override
  State<Pertemuan06Screen> createState() => _Pertemuan06Screen();
}

class _Pertemuan06Screen extends State<Pertemuan06Screen> {
  String itemSelected = 'Pilih Cita-cita';
  List items = [
    'Pilih Cita-cita',
    'Development',
    'Programmer',
    'UI UX Desainner',
    'IT Consultan',
    'Project Manager'
  ];
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan06Provider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Switches | DropdownB.')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark mode theme'),
                Switch(
                    value: prov.enableDrakMode,
                    activeColor: Colors.green,
                    onChanged: (val) {
                      prov.setBrightness = val;
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Cita-Cita'),
                DropdownButton(
                    items: items.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: itemSelected,
                    onChanged: (val) {
                      setState(() {
                        itemSelected = val as String;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
