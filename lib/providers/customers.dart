import 'package:flutter_odoo_fleet_sallab/models/customer.dart';

class Customers {
  List<Customer> _searchedCustomers = [
// dummy customers
// Customer(address:)
  ];

  get searchedCustomers {
    return [..._searchedCustomers];
  }

  void searchCustomerByPhone(String phone) {
    _searchedCustomers = _searchedCustomers
        .where((customer) => customer.phone == phone)
        .toList();
  }
  // notifylisteners
}
