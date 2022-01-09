import 'package:flutter/material.dart';
import 'list.dart';
import 'list_element.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int element) {
          return ListTile(
              onTap: () {
                setState(() {
                  _detailPage(context, element);
                });
              },
              title: ItemElement(
                name: list[element].name,
                phone: list[element].phone,
                photo: list[element].photo,
                tag: list[element].tag,
              ));
        },
      ),
    );
  }

  void _detailPage(BuildContext context, int element) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: Text(list[element].name),
              ),
              body: SingleChildScrollView(
                child: Hero(
                  flightShuttleBuilder: (
                    BuildContext flightContext,
                    Animation<double> animation,
                    HeroFlightDirection flightDirection,
                    BuildContext fromHeroContext,
                    BuildContext toHeroContext,
                  ) {
                    return SingleChildScrollView(
                      child: fromHeroContext.widget,
                    );
                  },
                  tag: list[element].tag,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 400,
                        width: 600,
                        child: Image(
                          image: AssetImage(list[element].photo),
                        ),
                      ),
                      Text(
                        list[element].name,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'Phone: ${list[element].phone}',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
