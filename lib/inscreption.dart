import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
    hintText: 'Saisir votre email',
  ),
),
SizedBox(height: 20),
TextFormField(
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    hintText: 'Saisir votre mot de passe',
  ),
  obscureText: true,
),
          ],
        ),
      ),
    );
  }
}