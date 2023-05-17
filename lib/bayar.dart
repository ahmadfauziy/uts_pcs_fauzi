import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Bayar extends StatelessWidget {
  const Bayar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bayar'),
      ),
      body: Center(
            child: Text('Ini Adalah Halaman Bayar'),
          ),
    );
  }
}