import 'package:flutter_odoo_fleet_sallab/models/car.dart';
import 'package:flutter_odoo_fleet_sallab/models/customer.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipment.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipping_cost.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipping_line.dart';

final List<Car> dummyCars = [
  Car(id: 1, name: 'a0xx', driverName: 'ahmed', driverPhone: '01129372711'),
  Car(id: 2, name: 'b0xx', driverName: 'ali', driverPhone: '01029372711'),
  Car(id: 3, name: 'c0xx', driverName: 'mostafa', driverPhone: '01229372711'),
  Car(id: 4, name: 'd0xx', driverName: 'mohamed', driverPhone: '01129372711'),
  Car(id: 5, name: 'f0xx', driverName: 'alaa', driverPhone: '01129372711'),
];

final List<Customer> dummyCustomers = [
  Customer(id: 1, name: 'a0xx1', phone: '01129372711', address: 'giza'),
  Customer(id: 2, name: 'a0xx2', phone: '01029372711', address: 'giza'),
  Customer(id: 3, name: 'a0xx3', phone: '01229372711', address: 'giza'),
  Customer(id: 4, name: 'a0xx4', phone: '01129372711', address: 'giza'),
  Customer(id: 5, name: 'a0xx5', phone: '01129372711', address: 'giza'),
];

final List<Shipment> dummyShipments = [
  Shipment(
    id: '1',
    name: 'a0xx11',
    customer: dummyCustomers[1],
    orders: ['c11111', 'c21111'],
    shippingLines: dummyShipmentLines,
    shippingCostLines: dummyShipmentCosts,
  ),
  Shipment(
    id: '2',
    name: 'a0xx22',
    customer: dummyCustomers[2],
    orders: ['c1111', 'c2111', 'c3111'],
    shippingLines: dummyShipmentLines,
    shippingCostLines: dummyShipmentCosts,
  ),
  Shipment(
    id: '3',
    name: 'a0xx33',
    customer: dummyCustomers[3],
    orders: ['c1', 'c2'],
    shippingLines: dummyShipmentLines,
    shippingCostLines: dummyShipmentCosts,
  ),
];

final List<ShippingCost> dummyShipmentCosts = [
  ShippingCost(id: 1, area: 'giza', cost: 1.0, type: '111'),
  ShippingCost(id: 2, area: 'giza', cost: 2.0, type: '222'),
  ShippingCost(id: 3, area: 'giza', cost: 3.0, type: '333'),
  ShippingCost(id: 4, area: 'giza', cost: 4.0, type: '444'),
  ShippingCost(id: 5, area: 'giza', cost: 5.0, type: '555'),
];

final List<ShippingLine> dummyShipmentLines = [
  ShippingLine(
    id: 1,
    shipmentID: 1,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[1],
    lineCost: 2.0,
  ),
  ShippingLine(
    id: 2,
    shipmentID: 2,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[2],
    lineCost: 3.0,
  ),
  ShippingLine(
    id: 3,
    shipmentID: 3,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hour From',
    hourTo: 'hour To',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 4,
    shipmentID: 4,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
  ShippingLine(
    id: 5,
    shipmentID: 5,
    hourFrom: 'hourFrom',
    hourTo: 'hourTo',
    car: dummyCars[3],
    lineCost: 1.0,
  ),
];
