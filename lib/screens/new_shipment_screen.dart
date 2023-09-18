// search
// see search delegate video

import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipment.dart';
import 'package:flutter_odoo_fleet_sallab/providers/shipments.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/search_textfiled.dart';
import 'package:provider/provider.dart';

class NewShipmentScreen extends StatelessWidget {
  const NewShipmentScreen({super.key});
  static const routeName = '/new-shipment';

  @override
  Widget build(BuildContext context) {
    var loadedShipment = Provider.of<Shipments>(context);
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Shipment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchTextFiled(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: idController,
                //keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your id',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your name ',
                ),
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  String id = idController.text.trim();
                  String name = nameController.text.trim();

                  if (name.isNotEmpty && id.isNotEmpty) {
                    idController.text = '';
                    nameController.text = '';

                    loadedShipment.addShipment(
                      Shipment(
                        id: id,
                        name: name,
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Shipment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
