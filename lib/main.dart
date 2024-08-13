import 'package:flutter/material.dart';
import 'package:proj1/column.dart';
import 'package:proj1/container.dart';
import 'package:proj1/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    ));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
          title: const Text("Screen 1"),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.language_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings_outlined))
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Create"),
        ),
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    width: 240,
                    child: FilledButton.tonal(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 24, vertical: 20)),
                          textStyle:
                              WidgetStatePropertyAll(TextStyle(fontSize: 24))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ColumnScreen()));
                      },
                      child: const Text("Columns Screen"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    width: 240,
                    child: FilledButton.tonal(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 24, vertical: 20)),
                          textStyle:
                              WidgetStatePropertyAll(TextStyle(fontSize: 24))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RowScreen()));
                      },
                      child: const Text("Row Screen"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    width: 240,
                    child: FilledButton.tonal(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 24, vertical: 20)),
                          textStyle:
                              WidgetStatePropertyAll(TextStyle(fontSize: 24))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ContainerScreen()));
                      },
                      child: const Text("Container Screen"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    width: 240,
                    child: FilledButton.tonal(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 24, vertical: 20)),
                          textStyle:
                              WidgetStatePropertyAll(TextStyle(fontSize: 24))),
                      onPressed: () {},
                      child: const Text("Sized Screen"),
                    ),
                  ),
                ],
              ),
            ))));
  }
}
