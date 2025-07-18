import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการสินค้าทั้งหมด'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(2, 3),
                ),
              ],
            ),
            child: Text(
              '${index + 1}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          );
        },
      ),
    );
  }
}
