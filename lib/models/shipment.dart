import 'package:flutter_odoo_fleet_sallab/models/customer.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipping_cost.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipping_line.dart';

enum Shipped { cancel, shipped, delivered }

class Shipment {
  Shipment({
    required this.id,
    required this.name, //shippin ref ex SHIP/001
    required this.customer,
    this.totalShippingCost,
    required this.orders,
    required this.shippingLines,
    required this.shippingCostLines,
  });

  //int id;
  String id;
  String name;
  Customer customer;
  double? totalShippingCost;
  List<String> orders;
  List<ShippingLine> shippingLines;
  List<ShippingCost> shippingCostLines;
}
