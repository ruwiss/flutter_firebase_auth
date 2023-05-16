import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = ModalRoute.of(context)?.settings.arguments as User?;
    return Scaffold(
      body: Center(
        child: user == null
            ? const Text("İkinci Ekran")
            : ListTile(
          title: Text(user!.displayName!),
          subtitle: Text(user!.email!),
          leading: CircleAvatar(child: Image.network(user!.photoURL!),)
        )
      ),
    );
  }
}
