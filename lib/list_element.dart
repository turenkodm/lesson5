import 'package:flutter/material.dart';

class ItemElement extends StatelessWidget {
  const ItemElement({Key? key, required this.name, required this.phone})
      : super(key: key);
  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFFe7e0ec),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text('$name', style: Theme.of(context).textTheme.headline5,),
          const Divider(color: Colors.black, thickness: 1, indent: 100, endIndent: 100,),
          Text('Phone: $phone', style: Theme.of(context).textTheme.headline6,),
        ],
      ),
    );
  }
}
