import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/book.dart';

class AddScreen extends StatefulWidget {
  AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String _enterdName = '';
  final _formkey = GlobalKey<FormState>();

  Gener _gener = Gener.Action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (newValue) {
                  _enterdName = newValue!;
                },
                validator: (val) {
                  if (val == null ||
                      val.isEmpty ||
                      val.trim().length <= 1 ||
                      val.trim().length >= 50) {
                    return 'Must be between 1 and 50 chracters';
                  }
                  return null;
                },
                maxLength: 50,
              ),
              DropdownButtonFormField(
                items: [
                  for (final gener in Gener.values)
                    DropdownMenuItem(value: gener, child: Text(gener.name))
                ],
                value: _gener,
                onChanged: (val) {
                  setState(() {
                    _gener = val!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    Navigator.pop(
                        context, Book(name: _enterdName, gener: _gener));
                  }
                },
                child: const Text('Add Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
