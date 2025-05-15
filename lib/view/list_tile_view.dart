import 'package:flutter/material.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListTile(
        leading: const Icon(Icons.account_circle),
        title: const Text('Abhinav Dhakal'),
        subtitle: const Text('Kathmandu, Nepal'),
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
          ],
        )
      ),
    );
  }
}