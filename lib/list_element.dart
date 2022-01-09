import 'package:flutter/material.dart';

class ItemElement extends StatelessWidget {
  const ItemElement({
    Key? key,
    required this.name,
    required this.phone,
    required this.photo,
    required this.tag,
  }) : super(key: key);
  final String name;
  final String phone;
  final String photo;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xFFe7e0ec),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 250,
              child: Image(
                image: AssetImage(photo),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Phone: $phone',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
