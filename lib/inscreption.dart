import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
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
              controller: _emailController,
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
    hintText: 'Saisir votre email',
  ),
  validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Email invalide';
  }
  return null;
}
),
SizedBox(height: 20),
TextFormField(
  controller: _passwordController,
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    hintText: 'Saisir votre mot de passe',
  ),
  obscureText: true,
  validator: (value) {
  if (value == null || value.length < 8) {
    return 'Le mot de passe doit contenir au moins 8 caractères';
  }
  return null;
},
),
SizedBox(height: 20),

ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      print('Formulaire valide');
    }
  },
  child: Text('Inscription'),
),
          ],
        ),
      ),
    );
  }
}