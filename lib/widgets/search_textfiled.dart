import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/providers/customers.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/my_search_delegate.dart';
import 'package:provider/provider.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    var loadedShipment = Provider.of<Customers>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            onTap: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
            onChanged: (value) {
              loadedShipment.searchCustomerByPhone(value);
            },
            decoration: const InputDecoration(
                labelText: 'Search', suffixIcon: Icon(Icons.search)),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
