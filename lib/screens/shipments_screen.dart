// main screen
// grid or list view of shimpments
// import '../providers/shipments.dart';

// var tst =  Shipments().shipments;

import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/providers/shipments.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/app_drawer.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/search_textfiled.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/shipment_item.dart';
import 'package:provider/provider.dart';

class ShipmentScreen extends StatelessWidget {
  const ShipmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shipmentsData = Provider.of<Shipments>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fleet Sallab'),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SearchTextFiled(),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) => ShipmentItem(
              shipmentsData.shipments[index],
            ),
            itemCount: shipmentsData.shipments.length,
          ),
        ],
      ),
    );
  }
}
