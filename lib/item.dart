import 'package:flutter/material.dart';

class Item {
  String name;
  double price;
  int quantity;
  int type;
  String imageUrl;
  String description;

  Item(this.name, this.price, this.quantity, this.type, this.imageUrl, this.description);
}



Widget ItemCard(Item item) {
  return Card(
    child:
      Column(
        children: [
          SizedBox(height: 12),
          Row(children: [SizedBox(width: 16),ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(170),
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),SizedBox(width: 16)]),
          SizedBox(height: 12),
          Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),),
          Text("\$" + item.price.toString()),
          Text("Quantity: " + item.quantity.toString()),
          SizedBox(height: 12),
        ],
      ),
  );
}