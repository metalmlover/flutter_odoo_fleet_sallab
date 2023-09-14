import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/data/dummy_data.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipment.dart';

class Shipments with ChangeNotifier {
  final List<Shipment> _shipments = dummyShipments;

  List<Shipment> get shipments {
    return [..._shipments];
  }

  void addShipment(Shipment shipment) {
    _shipments.add(shipment);
    notifyListeners();
  }

  int get shipmentCount {
    return _shipments.length;
  }

  Shipment findById(String id) {
    return _shipments.firstWhere(
      (element) => element.id == id,
    );
  }
}
