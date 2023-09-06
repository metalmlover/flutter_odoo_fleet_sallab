class ShippingCost {
  ShippingCost({
    required this.id,
    required this.area,
    this.type,
    required this.cost,
  });

  int id;
  String area;
  String? type;
  double cost;
}
