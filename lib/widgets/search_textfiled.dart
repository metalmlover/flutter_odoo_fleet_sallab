import 'package:flutter/material.dart';
import 'package:flutter_odoo_fleet_sallab/widgets/my_search_delegate.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
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
            //onChanged: (value) {},
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
