import 'package:flutter/material.dart';

class Addwork extends StatefulWidget {
  const Addwork({super.key});

  @override
  State<Addwork> createState() => _AddworkState();
}

class _AddworkState extends State<Addwork> {
  final _formKey = GlobalKey<FormState>();
  String _pets = '';
  String _work = '';
  double _amount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Add Work'),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Male or Female?',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please input proper answer';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Are you Dark or Super Dark?',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please input proper answer';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Do You Have Stinky Smell or Killer Smell?'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'Please input proper answer';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      print('The form is Validated');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[300],
                  ),
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
