import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'gallery.dart';
import 'product.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Grid & List View'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 16,
                right: 16,
                bottom: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'รายการรูปภาพ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => MyWidget());
                    },
                    child: const Text('รูปถาพทั้งหมด'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: List.generate(10, (index) {
                  final imageUrls = [
                    'https://images.unsplash.com/photo-1542332213-9b5a5a3fad35?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542640244-7e672d6cef4e?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542699499639-2da05c985b72?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542810104-c5f07c7357ff?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542875272-2037d53b5e4d?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542806109-e88b46573e79?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542876974-aa06c4f5c6c4?q=80&w=626&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1542382361-9245d246c3bc?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1518399681705-1c1a55e5e883?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    'https://images.unsplash.com/photo-1541623089466-8e777dd05d70?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ];

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(imageUrls[index], fit: BoxFit.cover),
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 16,
                right: 16,
                bottom: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'รายการสินค้า',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const ProductPage());
                    },
                    child: const Text('สินค้าทั้งหมด'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
