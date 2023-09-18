import 'package:flutter/material.dart';
//import 'package:flutter_odoo_fleet_sallab/providers/customers.dart';
import 'package:flutter_odoo_fleet_sallab/providers/shipments.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/shipment_item.dart';
import 'package:provider/provider.dart';

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = ['A', 'B', 'C'];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            }
            query = '';
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final shipmentsData = Provider.of<Shipments>(context);
    //final customersData = Provider.of<Customers>(context);

    // List<Customers> suggestions = searchResults.where((searchResult) {
    //   final result = searchResult.toLowerCase();
    //   final input = query.toLowerCase();
    //   return result.contains(input);
    // }).toList();

    //final suggestions = customersData.searchCustomerByPhone(query);

    if (query.isEmpty) {}

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) => ShipmentItem(
        shipmentsData.shipments[index],
      ),
      itemCount: shipmentsData.shipments.length,
    );
  }
}
