import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/providers/shipments.dart';
import 'package:flutter_odoo_fleet_sallab/screens/new_shipment_screen.dart';
import 'package:provider/provider.dart';

class ShipmentDetailScreen extends StatelessWidget {
  const ShipmentDetailScreen({super.key});

  static const routeName = '/shipment-detail';

  @override
  Widget build(BuildContext context) {
    final shipmentID = ModalRoute.of(context)!.settings.arguments as String;
    final loadedShipment = Provider.of<Shipments>(context).findById(shipmentID);

    final shippingLines = loadedShipment.shippingLines;
    final shippingCostLines = loadedShipment.shippingCostLines;
    final orders = loadedShipment.orders;

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedShipment.name),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(NewShipmentScreen.routeName);
            },
            icon: const Icon(Icons.add_card),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Theme.of(context).colorScheme.background,
              elevation: 10,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Customer Name: ${loadedShipment.customer?.name}',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Shipment Order',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        for (final shipmentOrder in orders!)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black12,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 6),
                              child: Text(
                                shipmentOrder,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Customer Phone: ${loadedShipment.customer!.phone}',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Customer Address: ${loadedShipment.customer!.address}',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 220,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20,
                    columns: const [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Shipment ID')),
                      DataColumn(label: Text('Hour From')),
                      DataColumn(label: Text('hourTo')),
                      DataColumn(label: Text('Line Cost')),
                      DataColumn(label: Text('Car')),
                      DataColumn(label: Text('Car Type')),
                    ],
                    rows: [
                      for (final shipmentLine in shippingLines!)
                        DataRow(
                          cells: [
                            DataCell(Text('${shipmentLine.id}')),
                            DataCell(Text('${shipmentLine.shipmentID}')),
                            DataCell(Text(shipmentLine.hourFrom)),
                            DataCell(Text(shipmentLine.hourTo)),
                            DataCell(Text('${shipmentLine.lineCost}')),
                            DataCell(Text(shipmentLine.car.name)),
                            DataCell(Text('${shipmentLine.lineCost}')),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 220,
                // width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 40,
                      columns: const [
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('Area')),
                        DataColumn(label: Text('Cost')),
                        DataColumn(label: Text('Type')),
                      ],
                      rows: [
                        for (final shipmentCostLine in shippingCostLines!)
                          DataRow(
                            cells: [
                              DataCell(Text('${shipmentCostLine.id}')),
                              DataCell(Text(shipmentCostLine.area)),
                              DataCell(Text('${shipmentCostLine.cost}')),
                              DataCell(Text('${shipmentCostLine.type}')),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
