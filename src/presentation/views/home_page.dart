// ignore_for_file: must_be_immutable

import 'package:arzan/src/presentation/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GlobalProvider globalProvider;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      globalProvider = GlobalProvider.of(context, listen: false);
      globalProvider.getUser();
    });
    super.initState();
  }

  Future getUser() async {
    globalProvider.getUser();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<GlobalProvider>().cahngeUser.name;
    return Scaffold(
      appBar: AppBar(title: const Text("Salam")),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(user, textAlign: TextAlign.center),
          ),
          ElevatedButton(onPressed: getUser, child: const Text("Get User")),
        ],
      )),
    );
  }
}
