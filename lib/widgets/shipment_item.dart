import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/models/shipment.dart';
import 'package:flutter_odoo_fleet_sallab/screens/shipment_datail_screen.dart';

class ShipmentItem extends StatefulWidget {
  const ShipmentItem(
    this.shipment, {
    super.key,
  });

  final Shipment shipment;

  @override
  State<ShipmentItem> createState() => _ShipmentItemState();
}

class _ShipmentItemState extends State<ShipmentItem> {
  Shipped _selectedShipped = Shipped.shipped;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(widget.shipment.customer.name),
        subtitle: Text('${widget.shipment.orders}'),
        trailing: DropdownButton(
          value: _selectedShipped,
          items: Shipped.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e.name.toUpperCase(),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value == null) {
              return;
            }
            setState(() {
              _selectedShipped = value;
            });
          },
        ),
        onTap: () {
          Navigator.of(context).pushNamed(
            ShipmentDetailScreen.routeName,
            arguments: widget.shipment.id,
          );
        },
      ),
    );
  }
}
