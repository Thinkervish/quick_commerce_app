import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'Groceries',
    'Namkeens',
    'Beverages',
    'Fruits',
    'Dairy',
    'Personal Care',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus Connect'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              SizedBox(height: 16),
              _buildBanner(), // Add banner image later
              SizedBox(height: 16),
              _buildSection('Best Sellers'),
              _buildSection('Recommended'),
              _buildSection('Featured Items'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter_list),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 150,
      color: Colors.green[100], // Placeholder color
      child: Center(child: Text('Banner Image Here')),
    );
  }

  Widget _buildSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return _buildProductCard(categories[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(String category) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            color: Colors.grey[300], // Placeholder for image
            child: Center(child: Text('Image')), // Replace with Image.network or Image.asset
          ),
          Text(category, style: TextStyle(fontWeight: FontWeight.bold)),
          
          Text('Flat 10% discount'),
        ],
      ),
    );
  }
}