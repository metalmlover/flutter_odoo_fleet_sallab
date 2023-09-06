class Customer {
  Customer(
      {required this.id,
      required this.name,
      required this.phone,
      required this.address,
      this.reference});

  final int id;
  final String name;
  final String phone;
  final String address;
  final String? reference;
}
