import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/data/dummy_data.dart';
import 'package:flutter_odoo_fleet_sallab/models/customer.dart';

class Customers with ChangeNotifier {
  List<Customer> _searchedCustomers = dummyCustomers;

  get searchedCustomers {
    return [..._searchedCustomers];
  }

  void searchCustomerByPhone(String phone) {
    _searchedCustomers = _searchedCustomers
        .where((customer) => customer.phone == phone)
        .toList();
    notifyListeners();
  }
}
