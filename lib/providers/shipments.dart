import 'package:flutter_odoo_fleet_sallab/models/shipment.dart';

class Shipments {
  final List<Shipment> _shipments = [
// Shipment(id: fd)
  ];

  get shipments {
    return [..._shipments];
  }

  void addShipment(Shipment shipment) {
    _shipments.add(shipment);

// notify listeners
  }
}
