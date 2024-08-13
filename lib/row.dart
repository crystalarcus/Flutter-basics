import 'package:flutter/material.dart';

class RowScreen extends StatefulWidget {
  const RowScreen({super.key});

  @override
  State<RowScreen> createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {

  // TRY CHANGING FOLLOWING PROPERTIES
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize mainAxisSize = MainAxisSize.max;
  // END

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.of(context).pop();
      }, icon: const Icon(Icons.arrow_back)),),
      body: ListView(
        children: [
          ListTile(
              onTap: () {},
              title: const Text("mainAxisAlignment"),
              trailing: Text(
                mainAxisAlignment.name,
                style: const TextStyle(fontSize: 16),
              )),
          ListTile(
              onTap: () {},
              title: const Text("crossAxisAlignment"),
              trailing: Text(
                crossAxisAlignment.name,
                style: const TextStyle(fontSize: 16),
              )),
          ListTile(
              onTap: () {},
              title: const Text("mainAxisSize"),
              trailing: Text(
                mainAxisSize.name,
                style: const TextStyle(fontSize: 16),
              )),

          const SizedBox(height: 12),
          SizedBox(
            height: 500,
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              mainAxisSize: mainAxisSize,
              children: const [
                MyBox(num:1),
                SizedBox(width: 10),
                MyBox(num:2),
                SizedBox(width: 10),
                MyBox(num:3),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  const MyBox({super.key, required this.num});
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      height: MediaQuery.of(context).size.width - 60,
      width: MediaQuery.of(context).size.width / 5,
      alignment: Alignment.center,
      child: Text(num.toString()),
    );
  }
}
