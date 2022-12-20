import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Hello Developers"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { },
          child: Text('Click'),
        ),
      ),

  ));
}

