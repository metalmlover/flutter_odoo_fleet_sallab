import 'package:flutter_odoo_fleet_sallab/models/car.dart';

class ShippingLine {
  ShippingLine({
    required this.id,
    required this.shipmentID,
    required this.hourFrom,
    required this.hourTo,
    required this.car,
    this.carType,
    required this.lineCost,
  });

  int id;
  int shipmentID;
  String hourFrom;
  String hourTo;
  double lineCost;
  Car car;
  String? carType;
}
